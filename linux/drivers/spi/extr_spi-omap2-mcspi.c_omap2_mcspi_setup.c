
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {size_t chip_select; int mode; int dev; int cs_gpio; struct omap2_mcspi_cs* controller_state; int master; } ;
struct omap2_mcspi_regs {int cs; } ;
struct omap2_mcspi_dma {int dma_tx; int dma_rx; } ;
struct omap2_mcspi_cs {int node; scalar_t__ chctrl0; scalar_t__ chconf0; scalar_t__ mode; scalar_t__ phys; scalar_t__ base; } ;
struct omap2_mcspi {int dev; scalar_t__ phys; scalar_t__ base; struct omap2_mcspi_dma* dma_channels; struct omap2_mcspi_regs ctx; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SPI_CS_HIGH ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int dev_warn (int *,char*,int) ;
 int gpio_direction_output (int ,int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_request (int ,int ) ;
 struct omap2_mcspi_cs* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int omap2_mcspi_request_dma (struct spi_device*) ;
 int omap2_mcspi_setup_transfer (struct spi_device*,int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 struct omap2_mcspi* spi_master_get_devdata (int ) ;

__attribute__((used)) static int omap2_mcspi_setup(struct spi_device *spi)
{
 int ret;
 struct omap2_mcspi *mcspi = spi_master_get_devdata(spi->master);
 struct omap2_mcspi_regs *ctx = &mcspi->ctx;
 struct omap2_mcspi_dma *mcspi_dma;
 struct omap2_mcspi_cs *cs = spi->controller_state;

 mcspi_dma = &mcspi->dma_channels[spi->chip_select];

 if (!cs) {
  cs = kzalloc(sizeof *cs, GFP_KERNEL);
  if (!cs)
   return -ENOMEM;
  cs->base = mcspi->base + spi->chip_select * 0x14;
  cs->phys = mcspi->phys + spi->chip_select * 0x14;
  cs->mode = 0;
  cs->chconf0 = 0;
  cs->chctrl0 = 0;
  spi->controller_state = cs;

  list_add_tail(&cs->node, &ctx->cs);

  if (gpio_is_valid(spi->cs_gpio)) {
   ret = gpio_request(spi->cs_gpio, dev_name(&spi->dev));
   if (ret) {
    dev_err(&spi->dev, "failed to request gpio\n");
    return ret;
   }
   gpio_direction_output(spi->cs_gpio,
      !(spi->mode & SPI_CS_HIGH));
  }
 }

 if (!mcspi_dma->dma_rx || !mcspi_dma->dma_tx) {
  ret = omap2_mcspi_request_dma(spi);
  if (ret)
   dev_warn(&spi->dev, "not using DMA for McSPI (%d)\n",
     ret);
 }

 ret = pm_runtime_get_sync(mcspi->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(mcspi->dev);

  return ret;
 }

 ret = omap2_mcspi_setup_transfer(spi, ((void*)0));
 pm_runtime_mark_last_busy(mcspi->dev);
 pm_runtime_put_autosuspend(mcspi->dev);

 return ret;
}
