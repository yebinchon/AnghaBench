
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int mode; scalar_t__ controller_state; int master; } ;
struct omap2_mcspi {int dev; } ;


 int OMAP2_MCSPI_CHCONF_FORCE ;
 int SPI_CS_HIGH ;
 int dev_err (int ,char*,int) ;
 int mcspi_cached_chconf0 (struct spi_device*) ;
 int mcspi_write_chconf0 (struct spi_device*,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 struct omap2_mcspi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void omap2_mcspi_set_cs(struct spi_device *spi, bool enable)
{
 struct omap2_mcspi *mcspi = spi_master_get_devdata(spi->master);
 u32 l;





 if (spi->mode & SPI_CS_HIGH)
  enable = !enable;

 if (spi->controller_state) {
  int err = pm_runtime_get_sync(mcspi->dev);
  if (err < 0) {
   pm_runtime_put_noidle(mcspi->dev);
   dev_err(mcspi->dev, "failed to get sync: %d\n", err);
   return;
  }

  l = mcspi_cached_chconf0(spi);

  if (enable)
   l &= ~OMAP2_MCSPI_CHCONF_FORCE;
  else
   l |= OMAP2_MCSPI_CHCONF_FORCE;

  mcspi_write_chconf0(spi, l);

  pm_runtime_mark_last_busy(mcspi->dev);
  pm_runtime_put_autosuspend(mcspi->dev);
 }
}
