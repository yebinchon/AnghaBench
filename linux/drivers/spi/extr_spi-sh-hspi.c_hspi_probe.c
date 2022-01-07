
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int of_node; } ;
struct spi_controller {int mode_bits; int auto_runtime_pm; int bits_per_word_mask; int transfer_one_message; TYPE_1__ dev; int bus_num; } ;
struct resource {int start; } ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int id; } ;
struct hspi_priv {int addr; TYPE_2__* dev; struct clk* clk; struct spi_controller* ctlr; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int SPI_BPW_MASK (int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 struct clk* clk_get (TYPE_2__*,int *) ;
 int clk_put (struct clk*) ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_ioremap (TYPE_2__*,int ,int ) ;
 int devm_spi_register_controller (TYPE_2__*,struct spi_controller*) ;
 int hspi_transfer_one_message ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct hspi_priv*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int resource_size (struct resource*) ;
 struct spi_controller* spi_alloc_master (TYPE_2__*,int) ;
 struct hspi_priv* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_controller_put (struct spi_controller*) ;

__attribute__((used)) static int hspi_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct spi_controller *ctlr;
 struct hspi_priv *hspi;
 struct clk *clk;
 int ret;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "invalid resource\n");
  return -EINVAL;
 }

 ctlr = spi_alloc_master(&pdev->dev, sizeof(*hspi));
 if (!ctlr)
  return -ENOMEM;

 clk = clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "couldn't get clock\n");
  ret = -EINVAL;
  goto error0;
 }

 hspi = spi_controller_get_devdata(ctlr);
 platform_set_drvdata(pdev, hspi);


 hspi->ctlr = ctlr;
 hspi->dev = &pdev->dev;
 hspi->clk = clk;
 hspi->addr = devm_ioremap(hspi->dev,
           res->start, resource_size(res));
 if (!hspi->addr) {
  ret = -ENOMEM;
  goto error1;
 }

 pm_runtime_enable(&pdev->dev);

 ctlr->bus_num = pdev->id;
 ctlr->mode_bits = SPI_CPOL | SPI_CPHA;
 ctlr->dev.of_node = pdev->dev.of_node;
 ctlr->auto_runtime_pm = 1;
 ctlr->transfer_one_message = hspi_transfer_one_message;
 ctlr->bits_per_word_mask = SPI_BPW_MASK(8);

 ret = devm_spi_register_controller(&pdev->dev, ctlr);
 if (ret < 0) {
  dev_err(&pdev->dev, "devm_spi_register_controller error.\n");
  goto error2;
 }

 return 0;

 error2:
 pm_runtime_disable(&pdev->dev);
 error1:
 clk_put(clk);
 error0:
 spi_controller_put(ctlr);

 return ret;
}
