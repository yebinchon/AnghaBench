
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct sprd_spi {int src_clk; int clk; int xfer_completion; TYPE_2__* dev; int phy_base; int base; } ;
struct TYPE_15__ {int of_node; } ;
struct spi_controller {int mode_bits; int auto_runtime_pm; int max_speed_hz; int can_dma; int transfer_one; int set_cs; int bus_num; TYPE_1__ dev; } ;
struct resource {int start; } ;
struct TYPE_16__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int id; } ;


 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_3WIRE ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_TX_DUAL ;
 int SPRD_SPI_AUTOSUSPEND_DELAY ;
 int SPRD_SPI_MAX_SPEED_HZ ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 int devm_spi_register_controller (TYPE_2__*,struct spi_controller*) ;
 int init_completion (int *) ;
 int min_t (int ,int,int ) ;
 int of_alias_get_id (int ,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_controller*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_get_sync (TYPE_2__*) ;
 int pm_runtime_mark_last_busy (TYPE_2__*) ;
 int pm_runtime_put_autosuspend (TYPE_2__*) ;
 int pm_runtime_put_noidle (TYPE_2__*) ;
 int pm_runtime_set_active (TYPE_2__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_2__*,int ) ;
 int pm_runtime_use_autosuspend (TYPE_2__*) ;
 struct spi_controller* spi_alloc_master (TYPE_2__*,int) ;
 struct sprd_spi* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_controller_put (struct spi_controller*) ;
 int sprd_spi_can_dma ;
 int sprd_spi_chipselect ;
 int sprd_spi_clk_init (struct platform_device*,struct sprd_spi*) ;
 int sprd_spi_dma_init (struct platform_device*,struct sprd_spi*) ;
 int sprd_spi_dma_release (struct sprd_spi*) ;
 int sprd_spi_irq_init (struct platform_device*,struct sprd_spi*) ;
 int sprd_spi_transfer_one ;
 int u32 ;

__attribute__((used)) static int sprd_spi_probe(struct platform_device *pdev)
{
 struct spi_controller *sctlr;
 struct resource *res;
 struct sprd_spi *ss;
 int ret;

 pdev->id = of_alias_get_id(pdev->dev.of_node, "spi");
 sctlr = spi_alloc_master(&pdev->dev, sizeof(*ss));
 if (!sctlr)
  return -ENOMEM;

 ss = spi_controller_get_devdata(sctlr);
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ss->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ss->base)) {
  ret = PTR_ERR(ss->base);
  goto free_controller;
 }

 ss->phy_base = res->start;
 ss->dev = &pdev->dev;
 sctlr->dev.of_node = pdev->dev.of_node;
 sctlr->mode_bits = SPI_CPOL | SPI_CPHA | SPI_3WIRE | SPI_TX_DUAL;
 sctlr->bus_num = pdev->id;
 sctlr->set_cs = sprd_spi_chipselect;
 sctlr->transfer_one = sprd_spi_transfer_one;
 sctlr->can_dma = sprd_spi_can_dma;
 sctlr->auto_runtime_pm = 1;
 sctlr->max_speed_hz = min_t(u32, ss->src_clk >> 1,
        SPRD_SPI_MAX_SPEED_HZ);

 init_completion(&ss->xfer_completion);
 platform_set_drvdata(pdev, sctlr);
 ret = sprd_spi_clk_init(pdev, ss);
 if (ret)
  goto free_controller;

 ret = sprd_spi_irq_init(pdev, ss);
 if (ret)
  goto free_controller;

 ret = sprd_spi_dma_init(pdev, ss);
 if (ret)
  goto free_controller;

 ret = clk_prepare_enable(ss->clk);
 if (ret)
  goto release_dma;

 ret = pm_runtime_set_active(&pdev->dev);
 if (ret < 0)
  goto disable_clk;

 pm_runtime_set_autosuspend_delay(&pdev->dev,
      SPRD_SPI_AUTOSUSPEND_DELAY);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_enable(&pdev->dev);
 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to resume SPI controller\n");
  goto err_rpm_put;
 }

 ret = devm_spi_register_controller(&pdev->dev, sctlr);
 if (ret)
  goto err_rpm_put;

 pm_runtime_mark_last_busy(&pdev->dev);
 pm_runtime_put_autosuspend(&pdev->dev);

 return 0;

err_rpm_put:
 pm_runtime_put_noidle(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
disable_clk:
 clk_disable_unprepare(ss->clk);
release_dma:
 sprd_spi_dma_release(ss);
free_controller:
 spi_controller_put(sctlr);

 return ret;
}
