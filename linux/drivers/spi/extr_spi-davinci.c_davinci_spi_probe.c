
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int of_node; } ;
struct spi_master {int use_gpio_descriptors; int can_dma; int cleanup; int setup; int flags; int bits_per_word_mask; int num_chipselect; int bus_num; TYPE_1__ dev; } ;
struct resource {int start; } ;
struct TYPE_13__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; int id; } ;
struct davinci_spi_platform_data {scalar_t__ version; scalar_t__ intr_line; int prescaler_limit; int num_chipselect; } ;
struct TYPE_12__ {int flags; int txrx_bufs; int setup_transfer; int chipselect; struct spi_master* master; } ;
struct davinci_spi {int base; int irq; int clk; scalar_t__ version; int * dma_tx; int * dma_rx; TYPE_2__ bitbang; int get_tx; int get_rx; int prescaler_limit; int done; int pbase; int * bytes_per_word; struct davinci_spi_platform_data pdata; } ;


 int CS_DEFAULT ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int) ;
 int PTR_ERR (int) ;
 scalar_t__ SPIDEF ;
 scalar_t__ SPIGCR0 ;
 scalar_t__ SPIGCR1 ;
 int SPIGCR1_CLKMOD_MASK ;
 int SPIGCR1_MASTER_MASK ;
 int SPIGCR1_POWERDOWN_MASK ;
 scalar_t__ SPILVL ;
 scalar_t__ SPIPC0 ;
 int SPIPC0_CLKFUN_MASK ;
 int SPIPC0_DIFUN_MASK ;
 int SPIPC0_DOFUN_MASK ;
 int SPI_BPW_RANGE_MASK (int,int) ;
 int SPI_CS_WORD ;
 int SPI_INTLVL_0 ;
 int SPI_INTLVL_1 ;
 int SPI_LOOP ;
 int SPI_LSB_FIRST ;
 int SPI_MASTER_MUST_RX ;
 int SPI_NO_CS ;
 int SPI_READY ;
 scalar_t__ SPI_VERSION_2 ;
 int clk_disable_unprepare (int) ;
 int clk_prepare_enable (int) ;
 int davinci_spi_bufs ;
 int davinci_spi_can_dma ;
 int davinci_spi_chipselect ;
 int davinci_spi_cleanup ;
 int davinci_spi_irq ;
 int davinci_spi_request_dma (struct davinci_spi*) ;
 int davinci_spi_rx_buf_u8 ;
 int davinci_spi_setup ;
 int davinci_spi_setup_transfer ;
 int davinci_spi_tx_buf_u8 ;
 struct davinci_spi_platform_data* dev_get_platdata (TYPE_3__*) ;
 int dev_info (TYPE_3__*,char*,int) ;
 int dev_name (TYPE_3__*) ;
 int devm_clk_get (TYPE_3__*,int *) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 int * devm_kcalloc (TYPE_3__*,int ,int,int ) ;
 int devm_request_threaded_irq (TYPE_3__*,int,int ,int ,int ,int ,struct davinci_spi*) ;
 int dma_release_channel (int *) ;
 int dummy_thread_fn ;
 int init_completion (int *) ;
 int iowrite32 (int,scalar_t__) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 int set_io_bits (scalar_t__,int ) ;
 struct spi_master* spi_alloc_master (TYPE_3__*,int) ;
 int spi_bitbang_start (TYPE_2__*) ;
 int spi_davinci_get_pdata (struct platform_device*,struct davinci_spi*) ;
 struct davinci_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int udelay (int) ;

__attribute__((used)) static int davinci_spi_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct davinci_spi *dspi;
 struct davinci_spi_platform_data *pdata;
 struct resource *r;
 int ret = 0;
 u32 spipc0;

 master = spi_alloc_master(&pdev->dev, sizeof(struct davinci_spi));
 if (master == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }

 platform_set_drvdata(pdev, master);

 dspi = spi_master_get_devdata(master);

 if (dev_get_platdata(&pdev->dev)) {
  pdata = dev_get_platdata(&pdev->dev);
  dspi->pdata = *pdata;
 } else {

  ret = spi_davinci_get_pdata(pdev, dspi);
  if (ret < 0)
   goto free_master;
 }


 pdata = &dspi->pdata;

 dspi->bytes_per_word = devm_kcalloc(&pdev->dev,
         pdata->num_chipselect,
         sizeof(*dspi->bytes_per_word),
         GFP_KERNEL);
 if (dspi->bytes_per_word == ((void*)0)) {
  ret = -ENOMEM;
  goto free_master;
 }

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (r == ((void*)0)) {
  ret = -ENOENT;
  goto free_master;
 }

 dspi->pbase = r->start;

 dspi->base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(dspi->base)) {
  ret = PTR_ERR(dspi->base);
  goto free_master;
 }

 init_completion(&dspi->done);

 ret = platform_get_irq(pdev, 0);
 if (ret == 0)
  ret = -EINVAL;
 if (ret < 0)
  goto free_master;
 dspi->irq = ret;

 ret = devm_request_threaded_irq(&pdev->dev, dspi->irq, davinci_spi_irq,
    dummy_thread_fn, 0, dev_name(&pdev->dev), dspi);
 if (ret)
  goto free_master;

 dspi->bitbang.master = master;

 dspi->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(dspi->clk)) {
  ret = -ENODEV;
  goto free_master;
 }
 ret = clk_prepare_enable(dspi->clk);
 if (ret)
  goto free_master;

 master->use_gpio_descriptors = 1;
 master->dev.of_node = pdev->dev.of_node;
 master->bus_num = pdev->id;
 master->num_chipselect = pdata->num_chipselect;
 master->bits_per_word_mask = SPI_BPW_RANGE_MASK(2, 16);
 master->flags = SPI_MASTER_MUST_RX;
 master->setup = davinci_spi_setup;
 master->cleanup = davinci_spi_cleanup;
 master->can_dma = davinci_spi_can_dma;

 dspi->bitbang.chipselect = davinci_spi_chipselect;
 dspi->bitbang.setup_transfer = davinci_spi_setup_transfer;
 dspi->prescaler_limit = pdata->prescaler_limit;
 dspi->version = pdata->version;

 dspi->bitbang.flags = SPI_NO_CS | SPI_LSB_FIRST | SPI_LOOP | SPI_CS_WORD;
 if (dspi->version == SPI_VERSION_2)
  dspi->bitbang.flags |= SPI_READY;

 dspi->bitbang.txrx_bufs = davinci_spi_bufs;

 ret = davinci_spi_request_dma(dspi);
 if (ret == -EPROBE_DEFER) {
  goto free_clk;
 } else if (ret) {
  dev_info(&pdev->dev, "DMA is not supported (%d)\n", ret);
  dspi->dma_rx = ((void*)0);
  dspi->dma_tx = ((void*)0);
 }

 dspi->get_rx = davinci_spi_rx_buf_u8;
 dspi->get_tx = davinci_spi_tx_buf_u8;


 iowrite32(0, dspi->base + SPIGCR0);
 udelay(100);
 iowrite32(1, dspi->base + SPIGCR0);


 spipc0 = SPIPC0_DIFUN_MASK | SPIPC0_DOFUN_MASK | SPIPC0_CLKFUN_MASK;
 iowrite32(spipc0, dspi->base + SPIPC0);

 if (pdata->intr_line)
  iowrite32(SPI_INTLVL_1, dspi->base + SPILVL);
 else
  iowrite32(SPI_INTLVL_0, dspi->base + SPILVL);

 iowrite32(CS_DEFAULT, dspi->base + SPIDEF);


 set_io_bits(dspi->base + SPIGCR1, SPIGCR1_CLKMOD_MASK);
 set_io_bits(dspi->base + SPIGCR1, SPIGCR1_MASTER_MASK);
 set_io_bits(dspi->base + SPIGCR1, SPIGCR1_POWERDOWN_MASK);

 ret = spi_bitbang_start(&dspi->bitbang);
 if (ret)
  goto free_dma;

 dev_info(&pdev->dev, "Controller at 0x%p\n", dspi->base);

 return ret;

free_dma:
 if (dspi->dma_rx) {
  dma_release_channel(dspi->dma_rx);
  dma_release_channel(dspi->dma_tx);
 }
free_clk:
 clk_disable_unprepare(dspi->clk);
free_master:
 spi_master_put(master);
err:
 return ret;
}
