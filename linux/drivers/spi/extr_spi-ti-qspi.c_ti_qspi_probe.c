
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u32 ;
struct ti_qspi {int spi_max_frequency; int mmap_enabled; int * mmap_base; int * rx_chan; scalar_t__ mmap_phys_base; int transfer_complete; TYPE_2__* dev; int rx_bb_addr; int rx_bb_dma_addr; int * fclk; int ctrl_reg; int * ctrl_base; int * base; int list_lock; int mmap_size; struct spi_master* master; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct spi_master {int mode_bits; int auto_runtime_pm; int bits_per_word_mask; int num_chipselect; int * mem_ops; int * dma_rx; TYPE_1__ dev; int transfer_one_message; int setup; int flags; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_14__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
typedef int dma_cap_mask_t ;
typedef scalar_t__ dma_addr_t ;


 int DMA_MEMCPY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int QSPI_AUTOSUSPEND_TIMEOUT ;
 int QSPI_DMA_BUFFER_SIZE ;
 int SPI_BPW_MASK (int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_MASTER_HALF_DUPLEX ;
 int SPI_RX_DUAL ;
 int SPI_RX_QUAD ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_info (TYPE_2__*,char*,int) ;
 int * devm_clk_get (TYPE_2__*,char*) ;
 void* devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 int devm_spi_register_master (TYPE_2__*,struct spi_master*) ;
 int dma_alloc_coherent (TYPE_2__*,int ,int *,int) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (int *) ;
 int * dma_request_chan_by_mask (int *) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct ti_qspi*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_2__*,int ) ;
 int pm_runtime_use_autosuspend (TYPE_2__*) ;
 int resource_size (struct resource*) ;
 struct spi_master* spi_alloc_master (TYPE_2__*,int) ;
 struct ti_qspi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int * syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;
 int ti_qspi_mem_ops ;
 int ti_qspi_setup ;
 int ti_qspi_start_transfer_one ;

__attribute__((used)) static int ti_qspi_probe(struct platform_device *pdev)
{
 struct ti_qspi *qspi;
 struct spi_master *master;
 struct resource *r, *res_mmap;
 struct device_node *np = pdev->dev.of_node;
 u32 max_freq;
 int ret = 0, num_cs, irq;
 dma_cap_mask_t mask;

 master = spi_alloc_master(&pdev->dev, sizeof(*qspi));
 if (!master)
  return -ENOMEM;

 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_RX_DUAL | SPI_RX_QUAD;

 master->flags = SPI_MASTER_HALF_DUPLEX;
 master->setup = ti_qspi_setup;
 master->auto_runtime_pm = 1;
 master->transfer_one_message = ti_qspi_start_transfer_one;
 master->dev.of_node = pdev->dev.of_node;
 master->bits_per_word_mask = SPI_BPW_MASK(32) | SPI_BPW_MASK(16) |
         SPI_BPW_MASK(8);
 master->mem_ops = &ti_qspi_mem_ops;

 if (!of_property_read_u32(np, "num-cs", &num_cs))
  master->num_chipselect = num_cs;

 qspi = spi_master_get_devdata(master);
 qspi->master = master;
 qspi->dev = &pdev->dev;
 platform_set_drvdata(pdev, qspi);

 r = platform_get_resource_byname(pdev, IORESOURCE_MEM, "qspi_base");
 if (r == ((void*)0)) {
  r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
  if (r == ((void*)0)) {
   dev_err(&pdev->dev, "missing platform data\n");
   ret = -ENODEV;
   goto free_master;
  }
 }

 res_mmap = platform_get_resource_byname(pdev,
   IORESOURCE_MEM, "qspi_mmap");
 if (res_mmap == ((void*)0)) {
  res_mmap = platform_get_resource(pdev, IORESOURCE_MEM, 1);
  if (res_mmap == ((void*)0)) {
   dev_err(&pdev->dev,
    "memory mapped resource not required\n");
  }
 }

 if (res_mmap)
  qspi->mmap_size = resource_size(res_mmap);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  ret = irq;
  goto free_master;
 }

 mutex_init(&qspi->list_lock);

 qspi->base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(qspi->base)) {
  ret = PTR_ERR(qspi->base);
  goto free_master;
 }


 if (of_property_read_bool(np, "syscon-chipselects")) {
  qspi->ctrl_base =
  syscon_regmap_lookup_by_phandle(np,
      "syscon-chipselects");
  if (IS_ERR(qspi->ctrl_base)) {
   ret = PTR_ERR(qspi->ctrl_base);
   goto free_master;
  }
  ret = of_property_read_u32_index(np,
       "syscon-chipselects",
       1, &qspi->ctrl_reg);
  if (ret) {
   dev_err(&pdev->dev,
    "couldn't get ctrl_mod reg index\n");
   goto free_master;
  }
 }

 qspi->fclk = devm_clk_get(&pdev->dev, "fck");
 if (IS_ERR(qspi->fclk)) {
  ret = PTR_ERR(qspi->fclk);
  dev_err(&pdev->dev, "could not get clk: %d\n", ret);
 }

 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_set_autosuspend_delay(&pdev->dev, QSPI_AUTOSUSPEND_TIMEOUT);
 pm_runtime_enable(&pdev->dev);

 if (!of_property_read_u32(np, "spi-max-frequency", &max_freq))
  qspi->spi_max_frequency = max_freq;

 dma_cap_zero(mask);
 dma_cap_set(DMA_MEMCPY, mask);

 qspi->rx_chan = dma_request_chan_by_mask(&mask);
 if (IS_ERR(qspi->rx_chan)) {
  dev_err(qspi->dev,
   "No Rx DMA available, trying mmap mode\n");
  qspi->rx_chan = ((void*)0);
  ret = 0;
  goto no_dma;
 }
 qspi->rx_bb_addr = dma_alloc_coherent(qspi->dev,
           QSPI_DMA_BUFFER_SIZE,
           &qspi->rx_bb_dma_addr,
           GFP_KERNEL | GFP_DMA);
 if (!qspi->rx_bb_addr) {
  dev_err(qspi->dev,
   "dma_alloc_coherent failed, using PIO mode\n");
  dma_release_channel(qspi->rx_chan);
  goto no_dma;
 }
 master->dma_rx = qspi->rx_chan;
 init_completion(&qspi->transfer_complete);
 if (res_mmap)
  qspi->mmap_phys_base = (dma_addr_t)res_mmap->start;

no_dma:
 if (!qspi->rx_chan && res_mmap) {
  qspi->mmap_base = devm_ioremap_resource(&pdev->dev, res_mmap);
  if (IS_ERR(qspi->mmap_base)) {
   dev_info(&pdev->dev,
     "mmap failed with error %ld using PIO mode\n",
     PTR_ERR(qspi->mmap_base));
   qspi->mmap_base = ((void*)0);
   master->mem_ops = ((void*)0);
  }
 }
 qspi->mmap_enabled = 0;

 ret = devm_spi_register_master(&pdev->dev, master);
 if (!ret)
  return 0;

 pm_runtime_disable(&pdev->dev);
free_master:
 spi_master_put(master);
 return ret;
}
