
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int of_node; } ;
struct spi_controller {int mode_bits; int bus_num; int num_chipselect; TYPE_1__ dev; int * mem_ops; int setup; } ;
struct resource {int dummy; } ;
struct TYPE_11__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct atmel_qspi {void* pclk; void* qspick; TYPE_3__* caps; void* mem; void* regs; struct platform_device* pdev; int cmd_completion; } ;
struct TYPE_12__ {scalar_t__ has_qspick; } ;


 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int SPI_RX_DUAL ;
 int SPI_RX_QUAD ;
 int SPI_TX_DUAL ;
 int SPI_TX_QUAD ;
 int atmel_qspi_init (struct atmel_qspi*) ;
 int atmel_qspi_interrupt ;
 int atmel_qspi_mem_ops ;
 int atmel_qspi_setup ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_name (TYPE_2__*) ;
 void* devm_clk_get (TYPE_2__*,char*) ;
 void* devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,int ,struct atmel_qspi*) ;
 int init_completion (int *) ;
 TYPE_3__* of_device_get_match_data (TYPE_2__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct spi_controller*) ;
 struct spi_controller* spi_alloc_master (TYPE_2__*,int) ;
 struct atmel_qspi* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_controller_put (struct spi_controller*) ;
 int spi_register_controller (struct spi_controller*) ;

__attribute__((used)) static int atmel_qspi_probe(struct platform_device *pdev)
{
 struct spi_controller *ctrl;
 struct atmel_qspi *aq;
 struct resource *res;
 int irq, err = 0;

 ctrl = spi_alloc_master(&pdev->dev, sizeof(*aq));
 if (!ctrl)
  return -ENOMEM;

 ctrl->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD | SPI_TX_DUAL | SPI_TX_QUAD;
 ctrl->setup = atmel_qspi_setup;
 ctrl->bus_num = -1;
 ctrl->mem_ops = &atmel_qspi_mem_ops;
 ctrl->num_chipselect = 1;
 ctrl->dev.of_node = pdev->dev.of_node;
 platform_set_drvdata(pdev, ctrl);

 aq = spi_controller_get_devdata(ctrl);

 init_completion(&aq->cmd_completion);
 aq->pdev = pdev;


 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "qspi_base");
 aq->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(aq->regs)) {
  dev_err(&pdev->dev, "missing registers\n");
  err = PTR_ERR(aq->regs);
  goto exit;
 }


 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "qspi_mmap");
 aq->mem = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(aq->mem)) {
  dev_err(&pdev->dev, "missing AHB memory\n");
  err = PTR_ERR(aq->mem);
  goto exit;
 }


 aq->pclk = devm_clk_get(&pdev->dev, "pclk");
 if (IS_ERR(aq->pclk))
  aq->pclk = devm_clk_get(&pdev->dev, ((void*)0));

 if (IS_ERR(aq->pclk)) {
  dev_err(&pdev->dev, "missing peripheral clock\n");
  err = PTR_ERR(aq->pclk);
  goto exit;
 }


 err = clk_prepare_enable(aq->pclk);
 if (err) {
  dev_err(&pdev->dev, "failed to enable the peripheral clock\n");
  goto exit;
 }

 aq->caps = of_device_get_match_data(&pdev->dev);
 if (!aq->caps) {
  dev_err(&pdev->dev, "Could not retrieve QSPI caps\n");
  err = -EINVAL;
  goto exit;
 }

 if (aq->caps->has_qspick) {

  aq->qspick = devm_clk_get(&pdev->dev, "qspick");
  if (IS_ERR(aq->qspick)) {
   dev_err(&pdev->dev, "missing system clock\n");
   err = PTR_ERR(aq->qspick);
   goto disable_pclk;
  }


  err = clk_prepare_enable(aq->qspick);
  if (err) {
   dev_err(&pdev->dev,
    "failed to enable the QSPI system clock\n");
   goto disable_pclk;
  }
 }


 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  err = irq;
  goto disable_qspick;
 }
 err = devm_request_irq(&pdev->dev, irq, atmel_qspi_interrupt,
          0, dev_name(&pdev->dev), aq);
 if (err)
  goto disable_qspick;

 atmel_qspi_init(aq);

 err = spi_register_controller(ctrl);
 if (err)
  goto disable_qspick;

 return 0;

disable_qspick:
 clk_disable_unprepare(aq->qspick);
disable_pclk:
 clk_disable_unprepare(aq->pclk);
exit:
 spi_controller_put(ctrl);

 return err;
}
