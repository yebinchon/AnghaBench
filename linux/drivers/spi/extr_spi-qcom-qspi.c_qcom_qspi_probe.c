
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct spi_master {int max_speed_hz; int bus_num; int mode_bits; int auto_runtime_pm; int handle_err; int transfer_one; int prepare_message; int flags; TYPE_1__ dev; int num_chipselect; } ;
struct qcom_qspi {TYPE_2__* clks; int base; struct device* dev; int lock; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {char* id; } ;


 int ENOMEM ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 size_t QSPI_CLK_CORE ;
 size_t QSPI_CLK_IFACE ;
 int QSPI_NUM_CLKS ;
 int QSPI_NUM_CS ;
 int SPI_MASTER_HALF_DUPLEX ;
 int SPI_MODE_0 ;
 int SPI_RX_DUAL ;
 int SPI_RX_QUAD ;
 int SPI_TX_DUAL ;
 int SPI_TX_QUAD ;
 int dev_err (struct device*,char*,int) ;
 int dev_name (struct device*) ;
 int devm_clk_bulk_get (struct device*,int ,TYPE_2__*) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct qcom_qspi*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int qcom_qspi_handle_err ;
 int qcom_qspi_irq ;
 int qcom_qspi_prepare_message ;
 int qcom_qspi_transfer_one ;
 struct spi_master* spi_alloc_master (struct device*,int) ;
 struct qcom_qspi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_register_master (struct spi_master*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int qcom_qspi_probe(struct platform_device *pdev)
{
 int ret;
 struct device *dev;
 struct spi_master *master;
 struct qcom_qspi *ctrl;

 dev = &pdev->dev;

 master = spi_alloc_master(dev, sizeof(*ctrl));
 if (!master)
  return -ENOMEM;

 platform_set_drvdata(pdev, master);

 ctrl = spi_master_get_devdata(master);

 spin_lock_init(&ctrl->lock);
 ctrl->dev = dev;
 ctrl->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(ctrl->base)) {
  ret = PTR_ERR(ctrl->base);
  goto exit_probe_master_put;
 }

 ctrl->clks[QSPI_CLK_CORE].id = "core";
 ctrl->clks[QSPI_CLK_IFACE].id = "iface";
 ret = devm_clk_bulk_get(dev, QSPI_NUM_CLKS, ctrl->clks);
 if (ret)
  goto exit_probe_master_put;

 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  goto exit_probe_master_put;
 ret = devm_request_irq(dev, ret, qcom_qspi_irq,
   IRQF_TRIGGER_HIGH, dev_name(dev), ctrl);
 if (ret) {
  dev_err(dev, "Failed to request irq %d\n", ret);
  goto exit_probe_master_put;
 }

 master->max_speed_hz = 300000000;
 master->num_chipselect = QSPI_NUM_CS;
 master->bus_num = -1;
 master->dev.of_node = pdev->dev.of_node;
 master->mode_bits = SPI_MODE_0 |
       SPI_TX_DUAL | SPI_RX_DUAL |
       SPI_TX_QUAD | SPI_RX_QUAD;
 master->flags = SPI_MASTER_HALF_DUPLEX;
 master->prepare_message = qcom_qspi_prepare_message;
 master->transfer_one = qcom_qspi_transfer_one;
 master->handle_err = qcom_qspi_handle_err;
 master->auto_runtime_pm = 1;

 pm_runtime_enable(dev);

 ret = spi_register_master(master);
 if (!ret)
  return 0;

 pm_runtime_disable(dev);

exit_probe_master_put:
 spi_master_put(master);

 return ret;
}
