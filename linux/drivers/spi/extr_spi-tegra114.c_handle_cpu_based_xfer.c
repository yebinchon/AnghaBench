
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_spi_data {int cur_direction; scalar_t__ cur_pos; scalar_t__ cur_tx_pos; scalar_t__ cur_rx_pos; int lock; int cur_spi; int xfer_completion; int rst; int dma_control_reg; int command1_reg; int dev; int status_reg; scalar_t__ rx_status; scalar_t__ tx_status; struct spi_transfer* curr_xfer; } ;
struct spi_transfer {scalar_t__ len; } ;
typedef int irqreturn_t ;


 int DATA_DIR_RX ;
 int DATA_DIR_TX ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int dev_err (int ,char*,int ,...) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_spi_calculate_curr_xfer_param (int ,struct tegra_spi_data*,struct spi_transfer*) ;
 int tegra_spi_dump_regs (struct tegra_spi_data*) ;
 int tegra_spi_flush_fifos (struct tegra_spi_data*) ;
 int tegra_spi_read_rx_fifo_to_client_rxbuf (struct tegra_spi_data*,struct spi_transfer*) ;
 int tegra_spi_start_cpu_based_transfer (struct tegra_spi_data*,struct spi_transfer*) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t handle_cpu_based_xfer(struct tegra_spi_data *tspi)
{
 struct spi_transfer *t = tspi->curr_xfer;
 unsigned long flags;

 spin_lock_irqsave(&tspi->lock, flags);
 if (tspi->tx_status || tspi->rx_status) {
  dev_err(tspi->dev, "CpuXfer ERROR bit set 0x%x\n",
   tspi->status_reg);
  dev_err(tspi->dev, "CpuXfer 0x%08x:0x%08x\n",
   tspi->command1_reg, tspi->dma_control_reg);
  tegra_spi_dump_regs(tspi);
  tegra_spi_flush_fifos(tspi);
  complete(&tspi->xfer_completion);
  spin_unlock_irqrestore(&tspi->lock, flags);
  reset_control_assert(tspi->rst);
  udelay(2);
  reset_control_deassert(tspi->rst);
  return IRQ_HANDLED;
 }

 if (tspi->cur_direction & DATA_DIR_RX)
  tegra_spi_read_rx_fifo_to_client_rxbuf(tspi, t);

 if (tspi->cur_direction & DATA_DIR_TX)
  tspi->cur_pos = tspi->cur_tx_pos;
 else
  tspi->cur_pos = tspi->cur_rx_pos;

 if (tspi->cur_pos == t->len) {
  complete(&tspi->xfer_completion);
  goto exit;
 }

 tegra_spi_calculate_curr_xfer_param(tspi->cur_spi, tspi, t);
 tegra_spi_start_cpu_based_transfer(tspi, t);
exit:
 spin_unlock_irqrestore(&tspi->lock, flags);
 return IRQ_HANDLED;
}
