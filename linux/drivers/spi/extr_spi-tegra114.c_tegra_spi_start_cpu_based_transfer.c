
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_spi_data {int cur_direction; unsigned int curr_dma_words; int is_curr_dma_xfer; int command1_reg; int dma_control_reg; } ;
struct spi_transfer {int dummy; } ;


 int DATA_DIR_RX ;
 int DATA_DIR_TX ;
 int SPI_COMMAND1 ;
 int SPI_DMA_BLK ;
 int SPI_DMA_BLK_SET (unsigned int) ;
 int SPI_DMA_CTL ;
 int SPI_IE_RX ;
 int SPI_IE_TX ;
 int SPI_PIO ;
 unsigned int tegra_spi_fill_tx_fifo_from_client_txbuf (struct tegra_spi_data*,struct spi_transfer*) ;
 int tegra_spi_writel (struct tegra_spi_data*,int ,int ) ;

__attribute__((used)) static int tegra_spi_start_cpu_based_transfer(
  struct tegra_spi_data *tspi, struct spi_transfer *t)
{
 u32 val;
 unsigned cur_words;

 if (tspi->cur_direction & DATA_DIR_TX)
  cur_words = tegra_spi_fill_tx_fifo_from_client_txbuf(tspi, t);
 else
  cur_words = tspi->curr_dma_words;

 val = SPI_DMA_BLK_SET(cur_words - 1);
 tegra_spi_writel(tspi, val, SPI_DMA_BLK);

 val = 0;
 if (tspi->cur_direction & DATA_DIR_TX)
  val |= SPI_IE_TX;

 if (tspi->cur_direction & DATA_DIR_RX)
  val |= SPI_IE_RX;

 tegra_spi_writel(tspi, val, SPI_DMA_CTL);
 tspi->dma_control_reg = val;

 tspi->is_curr_dma_xfer = 0;

 val = tspi->command1_reg;
 val |= SPI_PIO;
 tegra_spi_writel(tspi, val, SPI_COMMAND1);
 return 0;
}
