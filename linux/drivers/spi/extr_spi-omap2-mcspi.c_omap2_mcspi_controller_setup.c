
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct omap2_mcspi_regs {int wakeupenable; } ;
struct omap2_mcspi {int dev; struct omap2_mcspi_regs ctx; struct spi_master* master; } ;


 int OMAP2_MCSPI_WAKEUPENABLE ;
 int OMAP2_MCSPI_WAKEUPENABLE_WKEN ;
 int mcspi_write_reg (struct spi_master*,int ,int ) ;
 int omap2_mcspi_set_mode (struct spi_master*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static int omap2_mcspi_controller_setup(struct omap2_mcspi *mcspi)
{
 struct spi_master *master = mcspi->master;
 struct omap2_mcspi_regs *ctx = &mcspi->ctx;
 int ret = 0;

 ret = pm_runtime_get_sync(mcspi->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(mcspi->dev);

  return ret;
 }

 mcspi_write_reg(master, OMAP2_MCSPI_WAKEUPENABLE,
   OMAP2_MCSPI_WAKEUPENABLE_WKEN);
 ctx->wakeupenable = OMAP2_MCSPI_WAKEUPENABLE_WKEN;

 omap2_mcspi_set_mode(master);
 pm_runtime_mark_last_busy(mcspi->dev);
 pm_runtime_put_autosuspend(mcspi->dev);
 return 0;
}
