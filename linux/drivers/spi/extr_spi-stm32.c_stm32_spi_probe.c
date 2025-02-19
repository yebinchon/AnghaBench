
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct stm32_spi_cfg {int (* config ) (struct stm32_spi*) ;int baud_rate_div_min; int baud_rate_div_max; int (* get_bpw_mask ) (struct stm32_spi*) ;int (* get_fifo_size ) (struct stm32_spi*) ;scalar_t__ has_fifo; int irq_handler_thread; int irq_handler_event; } ;
struct stm32_spi {int irq; int clk_rate; int clk; void* dma_rx; void* dma_tx; TYPE_3__* dev; struct stm32_spi_cfg const* cfg; int fifo_size; int rst; scalar_t__ phys_addr; int base; int lock; struct spi_master* master; } ;
struct TYPE_19__ {int of_node; } ;
struct spi_master {int auto_runtime_pm; int mode_bits; int max_speed_hz; int min_speed_hz; int* cs_gpios; int num_chipselect; int can_dma; void* dma_rx; void* dma_tx; int unprepare_message; int transfer_one; int prepare_message; int setup; int bits_per_word_mask; int bus_num; TYPE_1__ dev; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_21__ {int of_node; TYPE_2__* driver; } ;
struct platform_device {TYPE_3__ dev; int id; int name; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_22__ {scalar_t__ data; } ;
struct TYPE_20__ {int of_match_table; } ;


 int DRIVER_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_3WIRE ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LSB_FIRST ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_info (TYPE_3__*,char*) ;
 int dev_warn (TYPE_3__*,char*) ;
 int devm_clk_get (TYPE_3__*,int *) ;
 int devm_gpio_request (TYPE_3__*,int,int ) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 int devm_request_threaded_irq (TYPE_3__*,int,int ,int ,int ,int ,struct spi_master*) ;
 int devm_reset_control_get_exclusive (TYPE_3__*,int *) ;
 int devm_spi_register_master (TYPE_3__*,struct spi_master*) ;
 int dma_release_channel (void*) ;
 void* dma_request_slave_channel (TYPE_3__*,char*) ;
 int gpio_is_valid (int) ;
 TYPE_7__* of_match_device (int ,TYPE_3__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 int pm_runtime_disable (TYPE_3__*) ;
 int pm_runtime_enable (TYPE_3__*) ;
 int pm_runtime_set_active (TYPE_3__*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 struct spi_master* spi_alloc_master (TYPE_3__*,int) ;
 struct stm32_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spin_lock_init (int *) ;
 int stm32_spi_can_dma ;
 int stm32_spi_prepare_msg ;
 int stm32_spi_setup ;
 int stm32_spi_transfer_one ;
 int stm32_spi_unprepare_msg ;
 int stub1 (struct stm32_spi*) ;
 int stub2 (struct stm32_spi*) ;
 int stub3 (struct stm32_spi*) ;
 int udelay (int) ;

__attribute__((used)) static int stm32_spi_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct stm32_spi *spi;
 struct resource *res;
 int i, ret;

 master = spi_alloc_master(&pdev->dev, sizeof(struct stm32_spi));
 if (!master) {
  dev_err(&pdev->dev, "spi master allocation failed\n");
  return -ENOMEM;
 }
 platform_set_drvdata(pdev, master);

 spi = spi_master_get_devdata(master);
 spi->dev = &pdev->dev;
 spi->master = master;
 spin_lock_init(&spi->lock);

 spi->cfg = (const struct stm32_spi_cfg *)
  of_match_device(pdev->dev.driver->of_match_table,
    &pdev->dev)->data;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 spi->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(spi->base)) {
  ret = PTR_ERR(spi->base);
  goto err_master_put;
 }

 spi->phys_addr = (dma_addr_t)res->start;

 spi->irq = platform_get_irq(pdev, 0);
 if (spi->irq <= 0) {
  ret = spi->irq;
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev, "failed to get irq: %d\n", ret);
  goto err_master_put;
 }
 ret = devm_request_threaded_irq(&pdev->dev, spi->irq,
     spi->cfg->irq_handler_event,
     spi->cfg->irq_handler_thread,
     IRQF_ONESHOT, pdev->name, master);
 if (ret) {
  dev_err(&pdev->dev, "irq%d request failed: %d\n", spi->irq,
   ret);
  goto err_master_put;
 }

 spi->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(spi->clk)) {
  ret = PTR_ERR(spi->clk);
  dev_err(&pdev->dev, "clk get failed: %d\n", ret);
  goto err_master_put;
 }

 ret = clk_prepare_enable(spi->clk);
 if (ret) {
  dev_err(&pdev->dev, "clk enable failed: %d\n", ret);
  goto err_master_put;
 }
 spi->clk_rate = clk_get_rate(spi->clk);
 if (!spi->clk_rate) {
  dev_err(&pdev->dev, "clk rate = 0\n");
  ret = -EINVAL;
  goto err_clk_disable;
 }

 spi->rst = devm_reset_control_get_exclusive(&pdev->dev, ((void*)0));
 if (!IS_ERR(spi->rst)) {
  reset_control_assert(spi->rst);
  udelay(2);
  reset_control_deassert(spi->rst);
 }

 if (spi->cfg->has_fifo)
  spi->fifo_size = spi->cfg->get_fifo_size(spi);

 ret = spi->cfg->config(spi);
 if (ret) {
  dev_err(&pdev->dev, "controller configuration failed: %d\n",
   ret);
  goto err_clk_disable;
 }

 master->dev.of_node = pdev->dev.of_node;
 master->auto_runtime_pm = 1;
 master->bus_num = pdev->id;
 master->mode_bits = SPI_CPHA | SPI_CPOL | SPI_CS_HIGH | SPI_LSB_FIRST |
       SPI_3WIRE;
 master->bits_per_word_mask = spi->cfg->get_bpw_mask(spi);
 master->max_speed_hz = spi->clk_rate / spi->cfg->baud_rate_div_min;
 master->min_speed_hz = spi->clk_rate / spi->cfg->baud_rate_div_max;
 master->setup = stm32_spi_setup;
 master->prepare_message = stm32_spi_prepare_msg;
 master->transfer_one = stm32_spi_transfer_one;
 master->unprepare_message = stm32_spi_unprepare_msg;

 spi->dma_tx = dma_request_slave_channel(spi->dev, "tx");
 if (!spi->dma_tx)
  dev_warn(&pdev->dev, "failed to request tx dma channel\n");
 else
  master->dma_tx = spi->dma_tx;

 spi->dma_rx = dma_request_slave_channel(spi->dev, "rx");
 if (!spi->dma_rx)
  dev_warn(&pdev->dev, "failed to request rx dma channel\n");
 else
  master->dma_rx = spi->dma_rx;

 if (spi->dma_tx || spi->dma_rx)
  master->can_dma = stm32_spi_can_dma;

 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 ret = devm_spi_register_master(&pdev->dev, master);
 if (ret) {
  dev_err(&pdev->dev, "spi master registration failed: %d\n",
   ret);
  goto err_dma_release;
 }

 if (!master->cs_gpios) {
  dev_err(&pdev->dev, "no CS gpios available\n");
  ret = -EINVAL;
  goto err_dma_release;
 }

 for (i = 0; i < master->num_chipselect; i++) {
  if (!gpio_is_valid(master->cs_gpios[i])) {
   dev_err(&pdev->dev, "%i is not a valid gpio\n",
    master->cs_gpios[i]);
   ret = -EINVAL;
   goto err_dma_release;
  }

  ret = devm_gpio_request(&pdev->dev, master->cs_gpios[i],
     DRIVER_NAME);
  if (ret) {
   dev_err(&pdev->dev, "can't get CS gpio %i\n",
    master->cs_gpios[i]);
   goto err_dma_release;
  }
 }

 dev_info(&pdev->dev, "driver initialized\n");

 return 0;

err_dma_release:
 if (spi->dma_tx)
  dma_release_channel(spi->dma_tx);
 if (spi->dma_rx)
  dma_release_channel(spi->dma_rx);

 pm_runtime_disable(&pdev->dev);
err_clk_disable:
 clk_disable_unprepare(spi->clk);
err_master_put:
 spi_master_put(master);

 return ret;
}
