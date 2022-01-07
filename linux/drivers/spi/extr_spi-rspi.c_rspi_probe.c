
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct spi_ops {int flags; int mode_bits; int transfer_one; int set_config_register; } ;
struct TYPE_18__ {int of_node; } ;
struct spi_controller {int num_chipselect; int auto_runtime_pm; TYPE_2__ dev; int flags; int mode_bits; int unprepare_message; int prepare_message; int transfer_one; int bus_num; } ;
struct rspi_plat_data {int num_chipselect; } ;
struct rspi_data {int rx_irq; int tx_irq; int wait; int clk; int addr; struct spi_controller* ctlr; struct spi_ops const* ops; } ;
struct resource {int dummy; } ;
struct TYPE_19__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; int id; TYPE_1__* id_entry; } ;
struct TYPE_17__ {scalar_t__ driver_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_3__*,char*) ;
 struct rspi_plat_data* dev_get_platdata (TYPE_3__*) ;
 int dev_info (TYPE_3__*,char*) ;
 int dev_warn (TYPE_3__*,char*) ;
 int devm_clk_get (TYPE_3__*,int *) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 int devm_spi_register_controller (TYPE_3__*,struct spi_controller*) ;
 int init_waitqueue_head (int *) ;
 struct spi_ops* of_device_get_match_data (TYPE_3__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rspi_data*) ;
 int pm_runtime_disable (TYPE_3__*) ;
 int pm_runtime_enable (TYPE_3__*) ;
 int rspi_irq_mux ;
 int rspi_irq_rx ;
 int rspi_irq_tx ;
 int rspi_parse_dt (TYPE_3__*,struct spi_controller*) ;
 int rspi_prepare_message ;
 int rspi_release_dma (struct spi_controller*) ;
 int rspi_request_dma (TYPE_3__*,struct spi_controller*,struct resource*) ;
 int rspi_request_irq (TYPE_3__*,int,int ,char*,struct rspi_data*) ;
 int rspi_unprepare_message ;
 struct spi_controller* spi_alloc_master (TYPE_3__*,int) ;
 struct rspi_data* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_controller_put (struct spi_controller*) ;

__attribute__((used)) static int rspi_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct spi_controller *ctlr;
 struct rspi_data *rspi;
 int ret;
 const struct rspi_plat_data *rspi_pd;
 const struct spi_ops *ops;

 ctlr = spi_alloc_master(&pdev->dev, sizeof(struct rspi_data));
 if (ctlr == ((void*)0))
  return -ENOMEM;

 ops = of_device_get_match_data(&pdev->dev);
 if (ops) {
  ret = rspi_parse_dt(&pdev->dev, ctlr);
  if (ret)
   goto error1;
 } else {
  ops = (struct spi_ops *)pdev->id_entry->driver_data;
  rspi_pd = dev_get_platdata(&pdev->dev);
  if (rspi_pd && rspi_pd->num_chipselect)
   ctlr->num_chipselect = rspi_pd->num_chipselect;
  else
   ctlr->num_chipselect = 2;
 }


 if (!ops->set_config_register) {
  dev_err(&pdev->dev, "there is no set_config_register\n");
  ret = -ENODEV;
  goto error1;
 }

 rspi = spi_controller_get_devdata(ctlr);
 platform_set_drvdata(pdev, rspi);
 rspi->ops = ops;
 rspi->ctlr = ctlr;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rspi->addr = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(rspi->addr)) {
  ret = PTR_ERR(rspi->addr);
  goto error1;
 }

 rspi->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(rspi->clk)) {
  dev_err(&pdev->dev, "cannot get clock\n");
  ret = PTR_ERR(rspi->clk);
  goto error1;
 }

 pm_runtime_enable(&pdev->dev);

 init_waitqueue_head(&rspi->wait);

 ctlr->bus_num = pdev->id;
 ctlr->auto_runtime_pm = 1;
 ctlr->transfer_one = ops->transfer_one;
 ctlr->prepare_message = rspi_prepare_message;
 ctlr->unprepare_message = rspi_unprepare_message;
 ctlr->mode_bits = ops->mode_bits;
 ctlr->flags = ops->flags;
 ctlr->dev.of_node = pdev->dev.of_node;

 ret = platform_get_irq_byname(pdev, "rx");
 if (ret < 0) {
  ret = platform_get_irq_byname(pdev, "mux");
  if (ret < 0)
   ret = platform_get_irq(pdev, 0);
  if (ret >= 0)
   rspi->rx_irq = rspi->tx_irq = ret;
 } else {
  rspi->rx_irq = ret;
  ret = platform_get_irq_byname(pdev, "tx");
  if (ret >= 0)
   rspi->tx_irq = ret;
 }
 if (ret < 0) {
  dev_err(&pdev->dev, "platform_get_irq error\n");
  goto error2;
 }

 if (rspi->rx_irq == rspi->tx_irq) {

  ret = rspi_request_irq(&pdev->dev, rspi->rx_irq, rspi_irq_mux,
           "mux", rspi);
 } else {

  ret = rspi_request_irq(&pdev->dev, rspi->rx_irq, rspi_irq_rx,
           "rx", rspi);
  if (!ret)
   ret = rspi_request_irq(&pdev->dev, rspi->tx_irq,
            rspi_irq_tx, "tx", rspi);
 }
 if (ret < 0) {
  dev_err(&pdev->dev, "request_irq error\n");
  goto error2;
 }

 ret = rspi_request_dma(&pdev->dev, ctlr, res);
 if (ret < 0)
  dev_warn(&pdev->dev, "DMA not available, using PIO\n");

 ret = devm_spi_register_controller(&pdev->dev, ctlr);
 if (ret < 0) {
  dev_err(&pdev->dev, "devm_spi_register_controller error.\n");
  goto error3;
 }

 dev_info(&pdev->dev, "probed\n");

 return 0;

error3:
 rspi_release_dma(ctlr);
error2:
 pm_runtime_disable(&pdev->dev);
error1:
 spi_controller_put(ctlr);

 return ret;
}
