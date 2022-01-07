
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct tegra_spi_data {int irq; int max_buf_size; int dma_buf_size; scalar_t__ last_used_cs; void* def_command2_reg; void* spi_cs_timing2; void* spi_cs_timing1; int def_command1_reg; int rst; int xfer_completion; int rx_dma_complete; int tx_dma_complete; int clk; int phys; int base; int soc_data; int lock; TYPE_2__* dev; struct spi_master* master; } ;
struct TYPE_18__ {int of_node; } ;
struct spi_master {int max_speed_hz; int use_gpio_descriptors; int mode_bits; int auto_runtime_pm; int bus_num; TYPE_1__ dev; scalar_t__ num_chipselect; int set_cs_timing; int transfer_one_message; int cleanup; int setup; int bits_per_word_mask; } ;
struct resource {int start; } ;
struct TYPE_19__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;


 int DEFAULT_SPI_DMA_BUF_LEN ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MAX_CHIP_SELECT ;
 int PTR_ERR (int ) ;
 int SPI_3WIRE ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_COMMAND1 ;
 int SPI_COMMAND2 ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_CS_TIMING1 ;
 int SPI_CS_TIMING2 ;
 int SPI_FIFO_DEPTH ;
 int SPI_LSB_FIRST ;
 int SPI_M_S ;
 int SPI_RX_DUAL ;
 int SPI_TX_DUAL ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_name (TYPE_2__*) ;
 int devm_clk_get (TYPE_2__*,char*) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 int devm_reset_control_get_exclusive (TYPE_2__*,char*) ;
 int devm_spi_register_master (TYPE_2__*,struct spi_master*) ;
 int free_irq (int,struct tegra_spi_data*) ;
 int init_completion (int *) ;
 int of_alias_get_id (int ,char*) ;
 int of_device_get_match_data (TYPE_2__*) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_enabled (TYPE_2__*) ;
 int pm_runtime_get_sync (TYPE_2__*) ;
 int pm_runtime_put (TYPE_2__*) ;
 int pm_runtime_status_suspended (TYPE_2__*) ;
 int request_threaded_irq (int,int ,int ,int ,int ,struct tegra_spi_data*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 struct spi_master* spi_alloc_master (TYPE_2__*,int) ;
 struct tegra_spi_data* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spin_lock_init (int *) ;
 int tegra_spi_cleanup ;
 int tegra_spi_deinit_dma_param (struct tegra_spi_data*,int) ;
 int tegra_spi_init_dma_param (struct tegra_spi_data*,int) ;
 int tegra_spi_isr ;
 int tegra_spi_isr_thread ;
 void* tegra_spi_readl (struct tegra_spi_data*,int ) ;
 int tegra_spi_runtime_resume (TYPE_2__*) ;
 int tegra_spi_runtime_suspend (TYPE_2__*) ;
 int tegra_spi_set_hw_cs_timing ;
 int tegra_spi_setup ;
 int tegra_spi_transfer_one_message ;
 int tegra_spi_writel (struct tegra_spi_data*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int tegra_spi_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct tegra_spi_data *tspi;
 struct resource *r;
 int ret, spi_irq;
 int bus_num;

 master = spi_alloc_master(&pdev->dev, sizeof(*tspi));
 if (!master) {
  dev_err(&pdev->dev, "master allocation failed\n");
  return -ENOMEM;
 }
 platform_set_drvdata(pdev, master);
 tspi = spi_master_get_devdata(master);

 if (of_property_read_u32(pdev->dev.of_node, "spi-max-frequency",
     &master->max_speed_hz))
  master->max_speed_hz = 25000000;


 master->use_gpio_descriptors = 1;
 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LSB_FIRST |
       SPI_TX_DUAL | SPI_RX_DUAL | SPI_3WIRE;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(4, 32);
 master->setup = tegra_spi_setup;
 master->cleanup = tegra_spi_cleanup;
 master->transfer_one_message = tegra_spi_transfer_one_message;
 master->set_cs_timing = tegra_spi_set_hw_cs_timing;
 master->num_chipselect = MAX_CHIP_SELECT;
 master->auto_runtime_pm = 1;
 bus_num = of_alias_get_id(pdev->dev.of_node, "spi");
 if (bus_num >= 0)
  master->bus_num = bus_num;

 tspi->master = master;
 tspi->dev = &pdev->dev;
 spin_lock_init(&tspi->lock);

 tspi->soc_data = of_device_get_match_data(&pdev->dev);
 if (!tspi->soc_data) {
  dev_err(&pdev->dev, "unsupported tegra\n");
  ret = -ENODEV;
  goto exit_free_master;
 }

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 tspi->base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(tspi->base)) {
  ret = PTR_ERR(tspi->base);
  goto exit_free_master;
 }
 tspi->phys = r->start;

 spi_irq = platform_get_irq(pdev, 0);
 tspi->irq = spi_irq;

 tspi->clk = devm_clk_get(&pdev->dev, "spi");
 if (IS_ERR(tspi->clk)) {
  dev_err(&pdev->dev, "can not get clock\n");
  ret = PTR_ERR(tspi->clk);
  goto exit_free_master;
 }

 tspi->rst = devm_reset_control_get_exclusive(&pdev->dev, "spi");
 if (IS_ERR(tspi->rst)) {
  dev_err(&pdev->dev, "can not get reset\n");
  ret = PTR_ERR(tspi->rst);
  goto exit_free_master;
 }

 tspi->max_buf_size = SPI_FIFO_DEPTH << 2;
 tspi->dma_buf_size = DEFAULT_SPI_DMA_BUF_LEN;

 ret = tegra_spi_init_dma_param(tspi, 1);
 if (ret < 0)
  goto exit_free_master;
 ret = tegra_spi_init_dma_param(tspi, 0);
 if (ret < 0)
  goto exit_rx_dma_free;
 tspi->max_buf_size = tspi->dma_buf_size;
 init_completion(&tspi->tx_dma_complete);
 init_completion(&tspi->rx_dma_complete);

 init_completion(&tspi->xfer_completion);

 pm_runtime_enable(&pdev->dev);
 if (!pm_runtime_enabled(&pdev->dev)) {
  ret = tegra_spi_runtime_resume(&pdev->dev);
  if (ret)
   goto exit_pm_disable;
 }

 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "pm runtime get failed, e = %d\n", ret);
  goto exit_pm_disable;
 }

 reset_control_assert(tspi->rst);
 udelay(2);
 reset_control_deassert(tspi->rst);
 tspi->def_command1_reg = SPI_M_S;
 tegra_spi_writel(tspi, tspi->def_command1_reg, SPI_COMMAND1);
 tspi->spi_cs_timing1 = tegra_spi_readl(tspi, SPI_CS_TIMING1);
 tspi->spi_cs_timing2 = tegra_spi_readl(tspi, SPI_CS_TIMING2);
 tspi->def_command2_reg = tegra_spi_readl(tspi, SPI_COMMAND2);
 tspi->last_used_cs = master->num_chipselect + 1;
 pm_runtime_put(&pdev->dev);
 ret = request_threaded_irq(tspi->irq, tegra_spi_isr,
       tegra_spi_isr_thread, IRQF_ONESHOT,
       dev_name(&pdev->dev), tspi);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register ISR for IRQ %d\n",
   tspi->irq);
  goto exit_pm_disable;
 }

 master->dev.of_node = pdev->dev.of_node;
 ret = devm_spi_register_master(&pdev->dev, master);
 if (ret < 0) {
  dev_err(&pdev->dev, "can not register to master err %d\n", ret);
  goto exit_free_irq;
 }
 return ret;

exit_free_irq:
 free_irq(spi_irq, tspi);
exit_pm_disable:
 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  tegra_spi_runtime_suspend(&pdev->dev);
 tegra_spi_deinit_dma_param(tspi, 0);
exit_rx_dma_free:
 tegra_spi_deinit_dma_param(tspi, 1);
exit_free_master:
 spi_master_put(master);
 return ret;
}
