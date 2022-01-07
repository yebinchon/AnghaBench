
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct zynq_qspi {scalar_t__ irq; void* pclk; void* refclk; int data_completion; void* regs; struct device* dev; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct spi_controller {int mode_bits; int max_speed_hz; TYPE_1__ dev; int setup; int * mem_ops; int num_chipselect; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; int name; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int ENXIO ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int SPI_RX_DUAL ;
 int SPI_RX_QUAD ;
 int SPI_TX_DUAL ;
 int SPI_TX_QUAD ;
 int ZYNQ_QSPI_DEFAULT_NUM_CS ;
 int clk_disable_unprepare (void*) ;
 int clk_get_rate (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,scalar_t__,int ,int ,int ,struct zynq_qspi*) ;
 int devm_spi_register_controller (struct device*,struct spi_controller*) ;
 int init_completion (int *) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct zynq_qspi*) ;
 struct spi_controller* spi_alloc_master (struct device*,int) ;
 struct zynq_qspi* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_controller_put (struct spi_controller*) ;
 int zynq_qspi_init_hw (struct zynq_qspi*) ;
 int zynq_qspi_irq ;
 int zynq_qspi_mem_ops ;
 int zynq_qspi_setup_op ;

__attribute__((used)) static int zynq_qspi_probe(struct platform_device *pdev)
{
 int ret = 0;
 struct spi_controller *ctlr;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct zynq_qspi *xqspi;
 u32 num_cs;

 ctlr = spi_alloc_master(&pdev->dev, sizeof(*xqspi));
 if (!ctlr)
  return -ENOMEM;

 xqspi = spi_controller_get_devdata(ctlr);
 xqspi->dev = dev;
 platform_set_drvdata(pdev, xqspi);
 xqspi->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(xqspi->regs)) {
  ret = PTR_ERR(xqspi->regs);
  goto remove_master;
 }

 xqspi->pclk = devm_clk_get(&pdev->dev, "pclk");
 if (IS_ERR(xqspi->pclk)) {
  dev_err(&pdev->dev, "pclk clock not found.\n");
  ret = PTR_ERR(xqspi->pclk);
  goto remove_master;
 }

 init_completion(&xqspi->data_completion);

 xqspi->refclk = devm_clk_get(&pdev->dev, "ref_clk");
 if (IS_ERR(xqspi->refclk)) {
  dev_err(&pdev->dev, "ref_clk clock not found.\n");
  ret = PTR_ERR(xqspi->refclk);
  goto remove_master;
 }

 ret = clk_prepare_enable(xqspi->pclk);
 if (ret) {
  dev_err(&pdev->dev, "Unable to enable APB clock.\n");
  goto remove_master;
 }

 ret = clk_prepare_enable(xqspi->refclk);
 if (ret) {
  dev_err(&pdev->dev, "Unable to enable device clock.\n");
  goto clk_dis_pclk;
 }


 zynq_qspi_init_hw(xqspi);

 xqspi->irq = platform_get_irq(pdev, 0);
 if (xqspi->irq <= 0) {
  ret = -ENXIO;
  goto remove_master;
 }
 ret = devm_request_irq(&pdev->dev, xqspi->irq, zynq_qspi_irq,
          0, pdev->name, xqspi);
 if (ret != 0) {
  ret = -ENXIO;
  dev_err(&pdev->dev, "request_irq failed\n");
  goto remove_master;
 }

 ret = of_property_read_u32(np, "num-cs",
       &num_cs);
 if (ret < 0)
  ctlr->num_chipselect = ZYNQ_QSPI_DEFAULT_NUM_CS;
 else
  ctlr->num_chipselect = num_cs;

 ctlr->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD |
       SPI_TX_DUAL | SPI_TX_QUAD;
 ctlr->mem_ops = &zynq_qspi_mem_ops;
 ctlr->setup = zynq_qspi_setup_op;
 ctlr->max_speed_hz = clk_get_rate(xqspi->refclk) / 2;
 ctlr->dev.of_node = np;
 ret = devm_spi_register_controller(&pdev->dev, ctlr);
 if (ret) {
  dev_err(&pdev->dev, "spi_register_master failed\n");
  goto clk_dis_all;
 }

 return ret;

clk_dis_all:
 clk_disable_unprepare(xqspi->refclk);
clk_dis_pclk:
 clk_disable_unprepare(xqspi->pclk);
remove_master:
 spi_controller_put(ctlr);

 return ret;
}
