
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {int speed_hz; } ;
struct spi_imx_data {int slave_burst; int bits_per_word; int spi_bus_clk; scalar_t__ base; scalar_t__ usedma; scalar_t__ slave_mode; } ;
struct spi_device {int dummy; } ;


 scalar_t__ MX51_ECSPI_CTRL ;
 int MX51_ECSPI_CTRL_BL_MASK ;
 int MX51_ECSPI_CTRL_BL_OFFSET ;
 int MX51_ECSPI_CTRL_POSTDIV_OFFSET ;
 int MX51_ECSPI_CTRL_PREDIV_OFFSET ;
 int MX51_ECSPI_CTRL_SMC ;
 scalar_t__ is_imx53_ecspi (struct spi_imx_data*) ;
 scalar_t__ likely (int) ;
 int mx51_ecspi_clkdiv (struct spi_imx_data*,int,int*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mx51_ecspi_prepare_transfer(struct spi_imx_data *spi_imx,
           struct spi_device *spi,
           struct spi_transfer *t)
{
 u32 ctrl = readl(spi_imx->base + MX51_ECSPI_CTRL);
 u32 clk = t->speed_hz, delay;


 ctrl &= ~MX51_ECSPI_CTRL_BL_MASK;
 if (spi_imx->slave_mode && is_imx53_ecspi(spi_imx))
  ctrl |= (spi_imx->slave_burst * 8 - 1)
   << MX51_ECSPI_CTRL_BL_OFFSET;
 else
  ctrl |= (spi_imx->bits_per_word - 1)
   << MX51_ECSPI_CTRL_BL_OFFSET;


 ctrl &= ~(0xf << MX51_ECSPI_CTRL_POSTDIV_OFFSET |
    0xf << MX51_ECSPI_CTRL_PREDIV_OFFSET);
 ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
 spi_imx->spi_bus_clk = clk;

 if (spi_imx->usedma)
  ctrl |= MX51_ECSPI_CTRL_SMC;

 writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
 delay = (2 * 1000000) / clk;
 if (likely(delay < 10))
  udelay(delay);
 else
  usleep_range(delay, delay + 10);

 return 0;
}
