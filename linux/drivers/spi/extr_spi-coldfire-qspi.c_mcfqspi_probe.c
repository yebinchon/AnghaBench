
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int mode_bits; int auto_runtime_pm; int transfer_one; int set_cs; int setup; int bits_per_word_mask; int num_chipselect; int bus_num; } ;
struct platform_device {int dev; int name; } ;
struct mcfqspi_platform_data {scalar_t__ cs_control; int num_chipselect; int bus_num; } ;
struct mcfqspi {scalar_t__ irq; int clk; int waitq; scalar_t__ cs_control; int iobase; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_dbg (int *,char*) ;
 struct mcfqspi_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 int devm_clk_get (int *,char*) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (int *,scalar_t__,int ,int ,int ,struct mcfqspi*) ;
 int devm_spi_register_master (int *,struct spi_master*) ;
 int init_waitqueue_head (int *) ;
 int mcfqspi_cs_setup (struct mcfqspi*) ;
 int mcfqspi_cs_teardown (struct mcfqspi*) ;
 int mcfqspi_irq_handler ;
 int mcfqspi_set_cs ;
 int mcfqspi_setup ;
 int mcfqspi_transfer_one ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 struct spi_master* spi_alloc_master (int *,int) ;
 struct mcfqspi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int mcfqspi_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct mcfqspi *mcfqspi;
 struct mcfqspi_platform_data *pdata;
 int status;

 pdata = dev_get_platdata(&pdev->dev);
 if (!pdata) {
  dev_dbg(&pdev->dev, "platform data is missing\n");
  return -ENOENT;
 }

 if (!pdata->cs_control) {
  dev_dbg(&pdev->dev, "pdata->cs_control is NULL\n");
  return -EINVAL;
 }

 master = spi_alloc_master(&pdev->dev, sizeof(*mcfqspi));
 if (master == ((void*)0)) {
  dev_dbg(&pdev->dev, "spi_alloc_master failed\n");
  return -ENOMEM;
 }

 mcfqspi = spi_master_get_devdata(master);

 mcfqspi->iobase = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(mcfqspi->iobase)) {
  status = PTR_ERR(mcfqspi->iobase);
  goto fail0;
 }

 mcfqspi->irq = platform_get_irq(pdev, 0);
 if (mcfqspi->irq < 0) {
  dev_dbg(&pdev->dev, "platform_get_irq failed\n");
  status = -ENXIO;
  goto fail0;
 }

 status = devm_request_irq(&pdev->dev, mcfqspi->irq, mcfqspi_irq_handler,
    0, pdev->name, mcfqspi);
 if (status) {
  dev_dbg(&pdev->dev, "request_irq failed\n");
  goto fail0;
 }

 mcfqspi->clk = devm_clk_get(&pdev->dev, "qspi_clk");
 if (IS_ERR(mcfqspi->clk)) {
  dev_dbg(&pdev->dev, "clk_get failed\n");
  status = PTR_ERR(mcfqspi->clk);
  goto fail0;
 }
 clk_enable(mcfqspi->clk);

 master->bus_num = pdata->bus_num;
 master->num_chipselect = pdata->num_chipselect;

 mcfqspi->cs_control = pdata->cs_control;
 status = mcfqspi_cs_setup(mcfqspi);
 if (status) {
  dev_dbg(&pdev->dev, "error initializing cs_control\n");
  goto fail1;
 }

 init_waitqueue_head(&mcfqspi->waitq);

 master->mode_bits = SPI_CS_HIGH | SPI_CPOL | SPI_CPHA;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(8, 16);
 master->setup = mcfqspi_setup;
 master->set_cs = mcfqspi_set_cs;
 master->transfer_one = mcfqspi_transfer_one;
 master->auto_runtime_pm = 1;

 platform_set_drvdata(pdev, master);
 pm_runtime_enable(&pdev->dev);

 status = devm_spi_register_master(&pdev->dev, master);
 if (status) {
  dev_dbg(&pdev->dev, "spi_register_master failed\n");
  goto fail2;
 }

 dev_info(&pdev->dev, "Coldfire QSPI bus driver\n");

 return 0;

fail2:
 pm_runtime_disable(&pdev->dev);
 mcfqspi_cs_teardown(mcfqspi);
fail1:
 clk_disable(mcfqspi->clk);
fail0:
 spi_master_put(master);

 dev_dbg(&pdev->dev, "Coldfire QSPI probe failed\n");

 return status;
}
