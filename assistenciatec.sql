-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Jun-2019 às 15:11
-- Versão do servidor: 10.3.15-MariaDB
-- versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `assistenciatec`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `email`, `senha`, `foto`) VALUES
(1, 'admin@gmail.com', 'd2da1e9f79c6ca6d5d60c7a2b8673c5a', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `data_nasc` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `cpf` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `rua` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `num_casa` int(11) DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `municipio` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `avaliacao` int(11) DEFAULT NULL,
  `data_criacao` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `hora_criacao` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `tel`, `senha`, `data_nasc`, `cpf`, `rua`, `bairro`, `num_casa`, `estado`, `cep`, `municipio`, `foto`, `avaliacao`, `data_criacao`, `hora_criacao`) VALUES
(1, 'reiel', 'vitor@gmail.com', '(88) 8 8888 - 8888', '69005bb62e9622ee1de61958aacf0f63', '19 / 09 / 2002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '27/06/2019', '01:56:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rodape` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cabecalho` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cnpj` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `frase` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `redeSocial` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `data_pedido` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `data_entrega` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `valor` text COLLATE utf8_bin DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `hora` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_tecnico` int(11) DEFAULT NULL,
  `procedimento` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id`, `foto`, `data_pedido`, `data_entrega`, `valor`, `descricao`, `hora`, `id_cliente`, `id_tecnico`, `procedimento`) VALUES
(1, 'a9dc0f2f50483a63be29c6dd6d3602387a739d3c.png', '27/06/2019', NULL, 'R$ 500,00', 'jewgfhewjvfewfwef', '02:09:36', 1, 1, 'Consertando');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tecnico`
--

CREATE TABLE `tecnico` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `data_nasc` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `cpf` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `rg` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `categoria` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sexo` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `estrela_5` int(11) DEFAULT NULL,
  `estrela_4` int(11) DEFAULT NULL,
  `estrela_3` int(11) DEFAULT NULL,
  `estrela_2` int(11) DEFAULT NULL,
  `estrela_1` int(11) DEFAULT NULL,
  `rua` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `num_casa` int(40) DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cep` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `municipio` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `data_criacao` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `hora_criacao` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tecnico`
--

INSERT INTO `tecnico` (`id`, `nome`, `email`, `tel`, `senha`, `data_nasc`, `cpf`, `rg`, `categoria`, `sexo`, `estrela_5`, `estrela_4`, `estrela_3`, `estrela_2`, `estrela_1`, `rua`, `bairro`, `num_casa`, `estado`, `cep`, `municipio`, `foto`, `data_criacao`, `hora_criacao`) VALUES
(1, 'vitoria', 'vit@hotmail.com', '(77) 7 7777 - 7777', '69005bb62e9622ee1de61958aacf0f63', '22 / 22 / 2222', '817 . 298 . 374 - 98', '3243243243 - 2', 'Técnico em Software', 'feminino', NULL, NULL, NULL, NULL, NULL, 'rua', 'Bairro', 1234, 'CE', '62940 - 000', 'Morada Nova', NULL, '27/06/2019', '01:58:30');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solicitacao_ibfk_1` (`id_tecnico`),
  ADD KEY `solicitacao_ibfk_2` (`id_cliente`);

--
-- Índices para tabela `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tecnico`
--
ALTER TABLE `tecnico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `solicitacao_ibfk_1` FOREIGN KEY (`id_tecnico`) REFERENCES `tecnico` (`id`),
  ADD CONSTRAINT `solicitacao_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
