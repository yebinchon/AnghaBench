
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int speed_hz; } ;
struct spi_imx_data {unsigned int spi_bus_clk; int bits_per_word; scalar_t__ base; int spi_clk; } ;
struct spi_device {int mode; unsigned int chip_select; int cs_gpio; } ;


 unsigned int MX21_CSPICTRL_CS_SHIFT ;
 unsigned int MX21_CSPICTRL_DR_SHIFT ;
 unsigned int MX21_CSPICTRL_ENABLE ;
 unsigned int MX21_CSPICTRL_MASTER ;
 unsigned int MX21_CSPICTRL_PHA ;
 unsigned int MX21_CSPICTRL_POL ;
 unsigned int MX21_CSPICTRL_SSPOL ;
 scalar_t__ MXC_CSPICTRL ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int gpio_is_valid (int ) ;
 scalar_t__ is_imx27_cspi (struct spi_imx_data*) ;
 unsigned int spi_imx_clkdiv_1 (int ,int ,unsigned int,unsigned int*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int mx21_prepare_transfer(struct spi_imx_data *spi_imx,
     struct spi_device *spi,
     struct spi_transfer *t)
{
 unsigned int reg = MX21_CSPICTRL_ENABLE | MX21_CSPICTRL_MASTER;
 unsigned int max = is_imx27_cspi(spi_imx) ? 16 : 18;
 unsigned int clk;

 reg |= spi_imx_clkdiv_1(spi_imx->spi_clk, t->speed_hz, max, &clk)
  << MX21_CSPICTRL_DR_SHIFT;
 spi_imx->spi_bus_clk = clk;

 reg |= spi_imx->bits_per_word - 1;

 if (spi->mode & SPI_CPHA)
  reg |= MX21_CSPICTRL_PHA;
 if (spi->mode & SPI_CPOL)
  reg |= MX21_CSPICTRL_POL;
 if (spi->mode & SPI_CS_HIGH)
  reg |= MX21_CSPICTRL_SSPOL;
 if (!gpio_is_valid(spi->cs_gpio))
  reg |= spi->chip_select << MX21_CSPICTRL_CS_SHIFT;

 writel(reg, spi_imx->base + MXC_CSPICTRL);

 return 0;
}
