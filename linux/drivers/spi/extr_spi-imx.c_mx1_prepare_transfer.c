
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int speed_hz; } ;
struct spi_imx_data {unsigned int spi_bus_clk; int bits_per_word; scalar_t__ base; int spi_clk; } ;
struct spi_device {int mode; } ;


 unsigned int MX1_CSPICTRL_DR_SHIFT ;
 unsigned int MX1_CSPICTRL_ENABLE ;
 unsigned int MX1_CSPICTRL_MASTER ;
 unsigned int MX1_CSPICTRL_PHA ;
 unsigned int MX1_CSPICTRL_POL ;
 scalar_t__ MXC_CSPICTRL ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 unsigned int spi_imx_clkdiv_2 (int ,int ,unsigned int*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int mx1_prepare_transfer(struct spi_imx_data *spi_imx,
    struct spi_device *spi,
    struct spi_transfer *t)
{
 unsigned int reg = MX1_CSPICTRL_ENABLE | MX1_CSPICTRL_MASTER;
 unsigned int clk;

 reg |= spi_imx_clkdiv_2(spi_imx->spi_clk, t->speed_hz, &clk) <<
  MX1_CSPICTRL_DR_SHIFT;
 spi_imx->spi_bus_clk = clk;

 reg |= spi_imx->bits_per_word - 1;

 if (spi->mode & SPI_CPHA)
  reg |= MX1_CSPICTRL_PHA;
 if (spi->mode & SPI_CPOL)
  reg |= MX1_CSPICTRL_POL;

 writel(reg, spi_imx->base + MXC_CSPICTRL);

 return 0;
}
