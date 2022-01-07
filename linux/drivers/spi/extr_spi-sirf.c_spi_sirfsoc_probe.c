
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int of_node; } ;
struct spi_master {int mode_bits; int bits_per_word_mask; int flags; int bus_num; TYPE_1__ dev; int max_speed_hz; int cleanup; int setup; } ;
struct TYPE_11__ {struct spi_master* master; int txrx_bufs; int setup_transfer; int chipselect; } ;
struct sirfsoc_spi {int fifo_size; int fifo_level_chk_mask; void* rx_chan; void* tx_chan; int clk; TYPE_2__ bitbang; int tx_done; int rx_done; int ctrl_freq; int base; int dat_max_frm_len; int type; int regs; int fifo_full_offset; } ;
struct sirf_spi_comp_data {int fifo_size; int (* hwinit ) (struct sirfsoc_spi*) ;int dat_max_frm_len; int type; int regs; } ;
struct TYPE_12__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; int id; } ;
struct of_device_id {struct sirf_spi_comp_data* data; } ;


 int DRIVER_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SIRFSOC_SPI_DEFAULT_FRQ ;
 int SPI_BPW_MASK (int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LSB_FIRST ;
 int SPI_MASTER_MUST_RX ;
 int SPI_MASTER_MUST_TX ;
 int clk_disable_unprepare (int ) ;
 int clk_get (TYPE_3__*,int *) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_put (int ) ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_info (TYPE_3__*,char*,int ) ;
 int device_reset (TYPE_3__*) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (TYPE_3__*,int,int ,int ,int ,struct sirfsoc_spi*) ;
 int dma_release_channel (void*) ;
 void* dma_request_slave_channel (TYPE_3__*,char*) ;
 int ilog2 (int) ;
 int init_completion (int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 struct spi_master* spi_alloc_master (TYPE_3__*,int) ;
 int spi_bitbang_start (TYPE_2__*) ;
 struct sirfsoc_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_sirfsoc_chipselect ;
 int spi_sirfsoc_cleanup ;
 int spi_sirfsoc_irq ;
 int spi_sirfsoc_of_match ;
 int spi_sirfsoc_setup ;
 int spi_sirfsoc_setup_transfer ;
 int spi_sirfsoc_transfer ;
 int stub1 (struct sirfsoc_spi*) ;

__attribute__((used)) static int spi_sirfsoc_probe(struct platform_device *pdev)
{
 struct sirfsoc_spi *sspi;
 struct spi_master *master;
 const struct sirf_spi_comp_data *spi_comp_data;
 int irq;
 int ret;
 const struct of_device_id *match;

 ret = device_reset(&pdev->dev);
 if (ret) {
  dev_err(&pdev->dev, "SPI reset failed!\n");
  return ret;
 }

 master = spi_alloc_master(&pdev->dev, sizeof(*sspi));
 if (!master) {
  dev_err(&pdev->dev, "Unable to allocate SPI master\n");
  return -ENOMEM;
 }
 match = of_match_node(spi_sirfsoc_of_match, pdev->dev.of_node);
 platform_set_drvdata(pdev, master);
 sspi = spi_master_get_devdata(master);
 sspi->fifo_full_offset = ilog2(sspi->fifo_size);
 spi_comp_data = match->data;
 sspi->regs = spi_comp_data->regs;
 sspi->type = spi_comp_data->type;
 sspi->fifo_level_chk_mask = (sspi->fifo_size / 4) - 1;
 sspi->dat_max_frm_len = spi_comp_data->dat_max_frm_len;
 sspi->fifo_size = spi_comp_data->fifo_size;
 sspi->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(sspi->base)) {
  ret = PTR_ERR(sspi->base);
  goto free_master;
 }
 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  ret = -ENXIO;
  goto free_master;
 }
 ret = devm_request_irq(&pdev->dev, irq, spi_sirfsoc_irq, 0,
    DRIVER_NAME, sspi);
 if (ret)
  goto free_master;

 sspi->bitbang.master = master;
 sspi->bitbang.chipselect = spi_sirfsoc_chipselect;
 sspi->bitbang.setup_transfer = spi_sirfsoc_setup_transfer;
 sspi->bitbang.txrx_bufs = spi_sirfsoc_transfer;
 sspi->bitbang.master->setup = spi_sirfsoc_setup;
 sspi->bitbang.master->cleanup = spi_sirfsoc_cleanup;
 master->bus_num = pdev->id;
 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LSB_FIRST | SPI_CS_HIGH;
 master->bits_per_word_mask = SPI_BPW_MASK(8) | SPI_BPW_MASK(12) |
     SPI_BPW_MASK(16) | SPI_BPW_MASK(32);
 master->max_speed_hz = SIRFSOC_SPI_DEFAULT_FRQ;
 master->flags = SPI_MASTER_MUST_RX | SPI_MASTER_MUST_TX;
 sspi->bitbang.master->dev.of_node = pdev->dev.of_node;


 sspi->rx_chan = dma_request_slave_channel(&pdev->dev, "rx");
 if (!sspi->rx_chan) {
  dev_err(&pdev->dev, "can not allocate rx dma channel\n");
  ret = -ENODEV;
  goto free_master;
 }
 sspi->tx_chan = dma_request_slave_channel(&pdev->dev, "tx");
 if (!sspi->tx_chan) {
  dev_err(&pdev->dev, "can not allocate tx dma channel\n");
  ret = -ENODEV;
  goto free_rx_dma;
 }

 sspi->clk = clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(sspi->clk)) {
  ret = PTR_ERR(sspi->clk);
  goto free_tx_dma;
 }
 clk_prepare_enable(sspi->clk);
 if (spi_comp_data->hwinit)
  spi_comp_data->hwinit(sspi);
 sspi->ctrl_freq = clk_get_rate(sspi->clk);

 init_completion(&sspi->rx_done);
 init_completion(&sspi->tx_done);

 ret = spi_bitbang_start(&sspi->bitbang);
 if (ret)
  goto free_clk;
 dev_info(&pdev->dev, "registered, bus number = %d\n", master->bus_num);

 return 0;
free_clk:
 clk_disable_unprepare(sspi->clk);
 clk_put(sspi->clk);
free_tx_dma:
 dma_release_channel(sspi->tx_chan);
free_rx_dma:
 dma_release_channel(sspi->rx_chan);
free_master:
 spi_master_put(master);

 return ret;
}
