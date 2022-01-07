
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sflash_data {int status_reg; int cur_direction; scalar_t__ cur_pos; scalar_t__ cur_tx_pos; scalar_t__ cur_rx_pos; int lock; int cur_spi; int xfer_completion; int rst; int dma_control_reg; int command_reg; int dev; scalar_t__ rx_status; scalar_t__ tx_status; struct spi_transfer* curr_xfer; } ;
struct spi_transfer {scalar_t__ len; } ;
typedef int irqreturn_t ;


 int DATA_DIR_RX ;
 int DATA_DIR_TX ;
 int IRQ_HANDLED ;
 int SPI_BSY ;
 int complete (int *) ;
 int dev_err (int ,char*,int,...) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_sflash_calculate_curr_xfer_param (int ,struct tegra_sflash_data*,struct spi_transfer*) ;
 int tegra_sflash_read_rx_fifo_to_client_rxbuf (struct tegra_sflash_data*,struct spi_transfer*) ;
 int tegra_sflash_start_cpu_based_transfer (struct tegra_sflash_data*,struct spi_transfer*) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t handle_cpu_based_xfer(struct tegra_sflash_data *tsd)
{
 struct spi_transfer *t = tsd->curr_xfer;
 unsigned long flags;

 spin_lock_irqsave(&tsd->lock, flags);
 if (tsd->tx_status || tsd->rx_status || (tsd->status_reg & SPI_BSY)) {
  dev_err(tsd->dev,
   "CpuXfer ERROR bit set 0x%x\n", tsd->status_reg);
  dev_err(tsd->dev,
   "CpuXfer 0x%08x:0x%08x\n", tsd->command_reg,
    tsd->dma_control_reg);
  reset_control_assert(tsd->rst);
  udelay(2);
  reset_control_deassert(tsd->rst);
  complete(&tsd->xfer_completion);
  goto exit;
 }

 if (tsd->cur_direction & DATA_DIR_RX)
  tegra_sflash_read_rx_fifo_to_client_rxbuf(tsd, t);

 if (tsd->cur_direction & DATA_DIR_TX)
  tsd->cur_pos = tsd->cur_tx_pos;
 else
  tsd->cur_pos = tsd->cur_rx_pos;

 if (tsd->cur_pos == t->len) {
  complete(&tsd->xfer_completion);
  goto exit;
 }

 tegra_sflash_calculate_curr_xfer_param(tsd->cur_spi, tsd, t);
 tegra_sflash_start_cpu_based_transfer(tsd, t);
exit:
 spin_unlock_irqrestore(&tsd->lock, flags);
 return IRQ_HANDLED;
}
