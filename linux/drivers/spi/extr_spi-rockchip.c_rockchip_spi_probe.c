
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_14__ {int of_node; } ;
struct spi_master {int auto_runtime_pm; int mode_bits; int bits_per_word_mask; int min_speed_hz; int * dma_tx; int * dma_rx; int can_dma; int flags; int handle_err; int max_transfer_size; int transfer_one; int set_cs; int max_speed_hz; TYPE_1__ dev; int num_chipselect; int bus_num; } ;
struct rockchip_spi {int freq; int rsd; int * apb_pclk; int * spiclk; scalar_t__ dma_addr_rx; scalar_t__ dma_addr_tx; TYPE_2__* dev; int fifo_len; int * regs; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_15__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int id; } ;


 int BAUDR_SCKDV_MAX ;
 int BAUDR_SCKDV_MIN ;
 int CR0_RSD_MAX ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int *) ;
 int MAX_SCLK_OUT ;
 int PTR_ERR (int *) ;
 int ROCKCHIP_SPI_MAX_CS_NUM ;
 scalar_t__ ROCKCHIP_SPI_RXDR ;
 scalar_t__ ROCKCHIP_SPI_TXDR ;
 int SPI_BPW_MASK (int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_LOOP ;
 int SPI_LSB_FIRST ;
 int SPI_MASTER_GPIO_SS ;
 int clk_disable_unprepare (int *) ;
 int clk_get_rate (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_name (TYPE_2__*) ;
 int dev_warn (TYPE_2__*,char*,...) ;
 void* devm_clk_get (TYPE_2__*,char*) ;
 int * devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 int devm_request_threaded_irq (TYPE_2__*,int,int ,int *,int ,int ,struct spi_master*) ;
 int devm_spi_register_master (TYPE_2__*,struct spi_master*) ;
 int dma_release_channel (int *) ;
 void* dma_request_chan (TYPE_2__*,char*) ;
 int get_fifo_len (struct rockchip_spi*) ;
 int min (int,int ) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_set_active (TYPE_2__*) ;
 int rockchip_spi_can_dma ;
 int rockchip_spi_handle_err ;
 int rockchip_spi_isr ;
 int rockchip_spi_max_transfer_size ;
 int rockchip_spi_set_cs ;
 int rockchip_spi_transfer_one ;
 struct spi_master* spi_alloc_master (TYPE_2__*,int) ;
 int spi_enable_chip (struct rockchip_spi*,int) ;
 struct rockchip_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int rockchip_spi_probe(struct platform_device *pdev)
{
 int ret;
 struct rockchip_spi *rs;
 struct spi_master *master;
 struct resource *mem;
 u32 rsd_nsecs;

 master = spi_alloc_master(&pdev->dev, sizeof(struct rockchip_spi));
 if (!master)
  return -ENOMEM;

 platform_set_drvdata(pdev, master);

 rs = spi_master_get_devdata(master);


 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rs->regs = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(rs->regs)) {
  ret = PTR_ERR(rs->regs);
  goto err_put_master;
 }

 rs->apb_pclk = devm_clk_get(&pdev->dev, "apb_pclk");
 if (IS_ERR(rs->apb_pclk)) {
  dev_err(&pdev->dev, "Failed to get apb_pclk\n");
  ret = PTR_ERR(rs->apb_pclk);
  goto err_put_master;
 }

 rs->spiclk = devm_clk_get(&pdev->dev, "spiclk");
 if (IS_ERR(rs->spiclk)) {
  dev_err(&pdev->dev, "Failed to get spi_pclk\n");
  ret = PTR_ERR(rs->spiclk);
  goto err_put_master;
 }

 ret = clk_prepare_enable(rs->apb_pclk);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to enable apb_pclk\n");
  goto err_put_master;
 }

 ret = clk_prepare_enable(rs->spiclk);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to enable spi_clk\n");
  goto err_disable_apbclk;
 }

 spi_enable_chip(rs, 0);

 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  goto err_disable_spiclk;

 ret = devm_request_threaded_irq(&pdev->dev, ret, rockchip_spi_isr, ((void*)0),
   IRQF_ONESHOT, dev_name(&pdev->dev), master);
 if (ret)
  goto err_disable_spiclk;

 rs->dev = &pdev->dev;
 rs->freq = clk_get_rate(rs->spiclk);

 if (!of_property_read_u32(pdev->dev.of_node, "rx-sample-delay-ns",
      &rsd_nsecs)) {

  u32 rsd = DIV_ROUND_CLOSEST(rsd_nsecs * (rs->freq >> 8),
    1000000000 >> 8);
  if (!rsd) {
   dev_warn(rs->dev, "%u Hz are too slow to express %u ns delay\n",
     rs->freq, rsd_nsecs);
  } else if (rsd > CR0_RSD_MAX) {
   rsd = CR0_RSD_MAX;
   dev_warn(rs->dev, "%u Hz are too fast to express %u ns delay, clamping at %u ns\n",
     rs->freq, rsd_nsecs,
     CR0_RSD_MAX * 1000000000U / rs->freq);
  }
  rs->rsd = rsd;
 }

 rs->fifo_len = get_fifo_len(rs);
 if (!rs->fifo_len) {
  dev_err(&pdev->dev, "Failed to get fifo length\n");
  ret = -EINVAL;
  goto err_disable_spiclk;
 }

 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 master->auto_runtime_pm = 1;
 master->bus_num = pdev->id;
 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP | SPI_LSB_FIRST;
 master->num_chipselect = ROCKCHIP_SPI_MAX_CS_NUM;
 master->dev.of_node = pdev->dev.of_node;
 master->bits_per_word_mask = SPI_BPW_MASK(16) | SPI_BPW_MASK(8) | SPI_BPW_MASK(4);
 master->min_speed_hz = rs->freq / BAUDR_SCKDV_MAX;
 master->max_speed_hz = min(rs->freq / BAUDR_SCKDV_MIN, MAX_SCLK_OUT);

 master->set_cs = rockchip_spi_set_cs;
 master->transfer_one = rockchip_spi_transfer_one;
 master->max_transfer_size = rockchip_spi_max_transfer_size;
 master->handle_err = rockchip_spi_handle_err;
 master->flags = SPI_MASTER_GPIO_SS;

 master->dma_tx = dma_request_chan(rs->dev, "tx");
 if (IS_ERR(master->dma_tx)) {

  if (PTR_ERR(master->dma_tx) == -EPROBE_DEFER) {
   ret = -EPROBE_DEFER;
   goto err_disable_pm_runtime;
  }
  dev_warn(rs->dev, "Failed to request TX DMA channel\n");
  master->dma_tx = ((void*)0);
 }

 master->dma_rx = dma_request_chan(rs->dev, "rx");
 if (IS_ERR(master->dma_rx)) {
  if (PTR_ERR(master->dma_rx) == -EPROBE_DEFER) {
   ret = -EPROBE_DEFER;
   goto err_free_dma_tx;
  }
  dev_warn(rs->dev, "Failed to request RX DMA channel\n");
  master->dma_rx = ((void*)0);
 }

 if (master->dma_tx && master->dma_rx) {
  rs->dma_addr_tx = mem->start + ROCKCHIP_SPI_TXDR;
  rs->dma_addr_rx = mem->start + ROCKCHIP_SPI_RXDR;
  master->can_dma = rockchip_spi_can_dma;
 }

 ret = devm_spi_register_master(&pdev->dev, master);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register master\n");
  goto err_free_dma_rx;
 }

 return 0;

err_free_dma_rx:
 if (master->dma_rx)
  dma_release_channel(master->dma_rx);
err_free_dma_tx:
 if (master->dma_tx)
  dma_release_channel(master->dma_tx);
err_disable_pm_runtime:
 pm_runtime_disable(&pdev->dev);
err_disable_spiclk:
 clk_disable_unprepare(rs->spiclk);
err_disable_apbclk:
 clk_disable_unprepare(rs->apb_pclk);
err_put_master:
 spi_master_put(master);

 return ret;
}
