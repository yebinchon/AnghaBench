
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int use_gpio_descriptors; int mode_bits; int max_speed_hz; int min_speed_hz; scalar_t__ num_chipselect; int bits_per_word_mask; int bus_num; int transfer_one; int prepare_message; int unprepare_transfer_hardware; int prepare_transfer_hardware; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int dev; int id; } ;
struct ep93xx_spi_info {scalar_t__ use_dma; } ;
struct ep93xx_spi {scalar_t__ mmio; scalar_t__ sspdr_phys; scalar_t__ clk; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 scalar_t__ SSPCR1 ;
 scalar_t__ SSPDR ;
 int clk_get_rate (scalar_t__) ;
 int dev_err (int *,char*) ;
 struct ep93xx_spi_info* dev_get_platdata (int *) ;
 int dev_info (int *,char*,unsigned long,int) ;
 int dev_warn (int *,char*) ;
 scalar_t__ devm_clk_get (int *,int *) ;
 scalar_t__ devm_ioremap_resource (int *,struct resource*) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct spi_master*) ;
 int devm_spi_register_master (int *,struct spi_master*) ;
 int ep93xx_spi_interrupt ;
 int ep93xx_spi_prepare_hardware ;
 int ep93xx_spi_prepare_message ;
 int ep93xx_spi_release_dma (struct ep93xx_spi*) ;
 scalar_t__ ep93xx_spi_setup_dma (struct ep93xx_spi*) ;
 int ep93xx_spi_transfer_one ;
 int ep93xx_spi_unprepare_hardware ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 struct spi_master* spi_alloc_master (int *,int) ;
 struct ep93xx_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ep93xx_spi_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct ep93xx_spi_info *info;
 struct ep93xx_spi *espi;
 struct resource *res;
 int irq;
 int error;

 info = dev_get_platdata(&pdev->dev);
 if (!info) {
  dev_err(&pdev->dev, "missing platform data\n");
  return -EINVAL;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return -EBUSY;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "unable to get iomem resource\n");
  return -ENODEV;
 }

 master = spi_alloc_master(&pdev->dev, sizeof(*espi));
 if (!master)
  return -ENOMEM;

 master->use_gpio_descriptors = 1;
 master->prepare_transfer_hardware = ep93xx_spi_prepare_hardware;
 master->unprepare_transfer_hardware = ep93xx_spi_unprepare_hardware;
 master->prepare_message = ep93xx_spi_prepare_message;
 master->transfer_one = ep93xx_spi_transfer_one;
 master->bus_num = pdev->id;
 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(4, 16);




 master->num_chipselect = 0;

 platform_set_drvdata(pdev, master);

 espi = spi_master_get_devdata(master);

 espi->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(espi->clk)) {
  dev_err(&pdev->dev, "unable to get spi clock\n");
  error = PTR_ERR(espi->clk);
  goto fail_release_master;
 }





 master->max_speed_hz = clk_get_rate(espi->clk) / 2;
 master->min_speed_hz = clk_get_rate(espi->clk) / (254 * 256);

 espi->sspdr_phys = res->start + SSPDR;

 espi->mmio = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(espi->mmio)) {
  error = PTR_ERR(espi->mmio);
  goto fail_release_master;
 }

 error = devm_request_irq(&pdev->dev, irq, ep93xx_spi_interrupt,
    0, "ep93xx-spi", master);
 if (error) {
  dev_err(&pdev->dev, "failed to request irq\n");
  goto fail_release_master;
 }

 if (info->use_dma && ep93xx_spi_setup_dma(espi))
  dev_warn(&pdev->dev, "DMA setup failed. Falling back to PIO\n");


 writel(0, espi->mmio + SSPCR1);

 error = devm_spi_register_master(&pdev->dev, master);
 if (error) {
  dev_err(&pdev->dev, "failed to register SPI master\n");
  goto fail_free_dma;
 }

 dev_info(&pdev->dev, "EP93xx SPI Controller at 0x%08lx irq %d\n",
   (unsigned long)res->start, irq);

 return 0;

fail_free_dma:
 ep93xx_spi_release_dma(espi);
fail_release_master:
 spi_master_put(master);

 return error;
}
