-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 20-Ago-2018 às 03:48
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `idcargo` int(11) NOT NULL,
  `cargo` varchar(264) NOT NULL,
  `cbo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`idcargo`, `cargo`, `cbo`) VALUES
(1, 'Gerente', 1),
(2, 'Coordenador', 2),
(3, 'Auxiliar Administrativo', 3),
(4, 'Diretor', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `idempresa` int(11) NOT NULL,
  `RazaoSocial` varchar(250) NOT NULL,
  `NomeFantasia` varchar(250) NOT NULL,
  `Logo` varchar(250) NOT NULL,
  `Ativa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`idempresa`, `RazaoSocial`, `NomeFantasia`, `Logo`, `Ativa`) VALUES
(1, 'Wallace', 'wsa', 'x', 1),
(2, 'Wally Soluções', 'EU', 'c:xhj.jgp', 1),
(3, 'EMPRESA', 'x', '', 1),
(4, 'x', 'x', '', 1),
(5, 'x', 'x', 'C:\\Users\\Wallace\\Pictures\\nave.png', 1),
(6, 'x', 'x', 'C:\\Users\\Wallace\\Pictures\\nave.png', 1),
(7, 'x', 'x', 'C:\\Users\\Wallace\\Pictures\\nave.png', 0),
(8, 'x', 'x', 'C:\\Users\\Wallace\\Pictures\\nave.png', 0),
(9, 'sss', 'sss', 'C:\\Users\\Wallace\\Pictures\\PesquisarProjeto.png', 1),
(10, 'sss', 'sss', 'C:\\Users\\Wallace\\Pictures\\PesquisarProjeto.png', 1),
(11, 'ss', 'ssssss', '', 1),
(12, 'ss', 'ssssss', '', 1),
(13, 'ss', 'ssss', 'C:\\Users\\Wallace\\Pictures\\bg32.jpg', 1),
(14, 'ss', 'ssss', 'C:\\Users\\Wallace\\Pictures\\bg32.jpg', 1),
(15, 'DER', 'DER', '', 1),
(16, 'DER', 'DER', '', 1),
(17, 'Duas Retas', 'Duas Retas', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `escalas`
--

CREATE TABLE `escalas` (
  `idescala` int(11) NOT NULL,
  `escala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `escalas`
--

INSERT INTO `escalas` (`idescala`, `escala`) VALUES
(1, 'Administrativa'),
(2, '12x36 I');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `matricula` varchar(10) NOT NULL,
  `nome` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `ctps` varchar(6) NOT NULL,
  `serie` varchar(5) NOT NULL,
  `unidade` varchar(13) NOT NULL,
  `alocacao` varchar(13) NOT NULL,
  `dtnasc` date NOT NULL,
  `dtadmissao` date NOT NULL,
  `dtdemissao` date NOT NULL,
  `idescala` int(11) NOT NULL,
  `superiorimediato` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidades`
--

CREATE TABLE `unidades` (
  `CNPJ` varchar(20) NOT NULL,
  `Nome` varchar(250) NOT NULL,
  `Matriz` tinyint(1) NOT NULL,
  `Ativa` tinyint(1) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idunidade` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `unidades`
--

INSERT INTO `unidades` (`CNPJ`, `Nome`, `Matriz`, `Ativa`, `idempresa`, `idunidade`) VALUES
('28417346000109', 'São Paulo', 0, 0, 2, 1),
('04674862000401', 'Itirapina', 1, 1, 2, 2),
('04674862000150', 'ITirapina', 0, 0, 1, 3),
('00070112000461', 'All Nations', 0, 1, 2, 5),
('10282834000190', 'DALMEIDA', 0, 0, 17, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(25) NOT NULL,
  `senha` varchar(18) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `senha`, `nivel`) VALUES
('wall', '3', 3),
('wallace', 'jead2705', 1),
('wally', '2', 2),
('wsa', '4', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`idcargo`);

--
-- Indexes for table `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`idempresa`);

--
-- Indexes for table `escalas`
--
ALTER TABLE `escalas`
  ADD PRIMARY KEY (`idescala`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`matricula`),
  ADD UNIQUE KEY `CPF` (`cpf`);

--
-- Indexes for table `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`idunidade`),
  ADD UNIQUE KEY `CNPJ` (`CNPJ`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `idcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `empresas`
--
ALTER TABLE `empresas`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `escalas`
--
ALTER TABLE `escalas`
  MODIFY `idescala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unidades`
--
ALTER TABLE `unidades`
  MODIFY `idunidade` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
