
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;
struct omap2_mcspi_regs {int modulctrl; } ;
struct omap2_mcspi {struct omap2_mcspi_regs ctx; } ;


 int OMAP2_MCSPI_MODULCTRL ;
 int OMAP2_MCSPI_MODULCTRL_MS ;
 int OMAP2_MCSPI_MODULCTRL_SINGLE ;
 int OMAP2_MCSPI_MODULCTRL_STEST ;
 int mcspi_read_reg (struct spi_master*,int ) ;
 int mcspi_write_reg (struct spi_master*,int ,int ) ;
 scalar_t__ spi_controller_is_slave (struct spi_master*) ;
 struct omap2_mcspi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static void omap2_mcspi_set_mode(struct spi_master *master)
{
 struct omap2_mcspi *mcspi = spi_master_get_devdata(master);
 struct omap2_mcspi_regs *ctx = &mcspi->ctx;
 u32 l;




 l = mcspi_read_reg(master, OMAP2_MCSPI_MODULCTRL);
 l &= ~(OMAP2_MCSPI_MODULCTRL_STEST);
 if (spi_controller_is_slave(master)) {
  l |= (OMAP2_MCSPI_MODULCTRL_MS);
 } else {
  l &= ~(OMAP2_MCSPI_MODULCTRL_MS);
  l |= OMAP2_MCSPI_MODULCTRL_SINGLE;
 }
 mcspi_write_reg(master, OMAP2_MCSPI_MODULCTRL, l);

 ctx->modulctrl = l;
}
