
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int of_node; } ;
struct spi_controller {int auto_runtime_pm; int mode_bits; int slave_abort; int setup; int transfer_one; int prepare_message; TYPE_1__ dev; } ;
struct resource {int dummy; } ;
struct TYPE_12__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mtk_spi_slave {int spi_clk; int base; TYPE_2__* dev; int xfer_done; } ;


 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_NONE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_LSB_FIRST ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_name (TYPE_2__*) ;
 int devm_clk_get (TYPE_2__*,char*) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,int ,struct spi_controller*) ;
 int devm_spi_register_controller (TYPE_2__*,struct spi_controller*) ;
 int init_completion (int *) ;
 int mtk_slave_abort ;
 int mtk_spi_slave_interrupt ;
 int mtk_spi_slave_prepare_message ;
 int mtk_spi_slave_setup ;
 int mtk_spi_slave_transfer_one ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_controller*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 struct spi_controller* spi_alloc_slave (TYPE_2__*,int) ;
 struct mtk_spi_slave* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_controller_put (struct spi_controller*) ;

__attribute__((used)) static int mtk_spi_slave_probe(struct platform_device *pdev)
{
 struct spi_controller *ctlr;
 struct mtk_spi_slave *mdata;
 struct resource *res;
 int irq, ret;

 ctlr = spi_alloc_slave(&pdev->dev, sizeof(*mdata));
 if (!ctlr) {
  dev_err(&pdev->dev, "failed to alloc spi slave\n");
  return -ENOMEM;
 }

 ctlr->auto_runtime_pm = 1;
 ctlr->dev.of_node = pdev->dev.of_node;
 ctlr->mode_bits = SPI_CPOL | SPI_CPHA;
 ctlr->mode_bits |= SPI_LSB_FIRST;

 ctlr->prepare_message = mtk_spi_slave_prepare_message;
 ctlr->transfer_one = mtk_spi_slave_transfer_one;
 ctlr->setup = mtk_spi_slave_setup;
 ctlr->slave_abort = mtk_slave_abort;

 mdata = spi_controller_get_devdata(ctlr);

 platform_set_drvdata(pdev, ctlr);

 init_completion(&mdata->xfer_done);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  ret = -ENODEV;
  dev_err(&pdev->dev, "failed to determine base address\n");
  goto err_put_ctlr;
 }

 mdata->dev = &pdev->dev;

 mdata->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(mdata->base)) {
  ret = PTR_ERR(mdata->base);
  goto err_put_ctlr;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  ret = irq;
  goto err_put_ctlr;
 }

 ret = devm_request_irq(&pdev->dev, irq, mtk_spi_slave_interrupt,
          IRQF_TRIGGER_NONE, dev_name(&pdev->dev), ctlr);
 if (ret) {
  dev_err(&pdev->dev, "failed to register irq (%d)\n", ret);
  goto err_put_ctlr;
 }

 mdata->spi_clk = devm_clk_get(&pdev->dev, "spi");
 if (IS_ERR(mdata->spi_clk)) {
  ret = PTR_ERR(mdata->spi_clk);
  dev_err(&pdev->dev, "failed to get spi-clk: %d\n", ret);
  goto err_put_ctlr;
 }

 ret = clk_prepare_enable(mdata->spi_clk);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to enable spi_clk (%d)\n", ret);
  goto err_put_ctlr;
 }

 pm_runtime_enable(&pdev->dev);

 ret = devm_spi_register_controller(&pdev->dev, ctlr);
 if (ret) {
  dev_err(&pdev->dev,
   "failed to register slave controller(%d)\n", ret);
  clk_disable_unprepare(mdata->spi_clk);
  goto err_disable_runtime_pm;
 }

 clk_disable_unprepare(mdata->spi_clk);

 return 0;

err_disable_runtime_pm:
 pm_runtime_disable(&pdev->dev);
err_put_ctlr:
 spi_controller_put(ctlr);

 return ret;
}
