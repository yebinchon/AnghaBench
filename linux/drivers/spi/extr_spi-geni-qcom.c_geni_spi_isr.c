
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;
struct geni_se {scalar_t__ base; } ;
struct spi_geni_master {scalar_t__ cur_mcmd; int lock; int xfer_done; int cur_bits_per_word; scalar_t__ rx_rem_bytes; int dev; scalar_t__ tx_rem_bytes; struct geni_se se; } ;
typedef int irqreturn_t ;


 scalar_t__ CMD_CS ;
 scalar_t__ CMD_NONE ;
 scalar_t__ CMD_XFER ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int M_CMD_ABORT_EN ;
 int M_CMD_CANCEL_EN ;
 int M_CMD_DONE_EN ;
 int M_RX_FIFO_LAST_EN ;
 int M_RX_FIFO_WATERMARK_EN ;
 int M_TX_FIFO_WATERMARK_EN ;
 scalar_t__ SE_GENI_M_IRQ_CLEAR ;
 scalar_t__ SE_GENI_M_IRQ_STATUS ;
 scalar_t__ SE_GENI_TX_WATERMARK_REG ;
 int complete (int *) ;
 int dev_err (int ,char*,scalar_t__,int ) ;
 int geni_spi_handle_rx (struct spi_geni_master*) ;
 int geni_spi_handle_tx (struct spi_geni_master*) ;
 int readl (scalar_t__) ;
 int spi_finalize_current_transfer (struct spi_master*) ;
 struct spi_geni_master* spi_master_get_devdata (struct spi_master*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t geni_spi_isr(int irq, void *data)
{
 struct spi_master *spi = data;
 struct spi_geni_master *mas = spi_master_get_devdata(spi);
 struct geni_se *se = &mas->se;
 u32 m_irq;
 unsigned long flags;

 if (mas->cur_mcmd == CMD_NONE)
  return IRQ_NONE;

 spin_lock_irqsave(&mas->lock, flags);
 m_irq = readl(se->base + SE_GENI_M_IRQ_STATUS);

 if ((m_irq & M_RX_FIFO_WATERMARK_EN) || (m_irq & M_RX_FIFO_LAST_EN))
  geni_spi_handle_rx(mas);

 if (m_irq & M_TX_FIFO_WATERMARK_EN)
  geni_spi_handle_tx(mas);

 if (m_irq & M_CMD_DONE_EN) {
  if (mas->cur_mcmd == CMD_XFER)
   spi_finalize_current_transfer(spi);
  else if (mas->cur_mcmd == CMD_CS)
   complete(&mas->xfer_done);
  mas->cur_mcmd = CMD_NONE;
  if (mas->tx_rem_bytes) {
   writel(0, se->base + SE_GENI_TX_WATERMARK_REG);
   dev_err(mas->dev, "Premature done. tx_rem = %d bpw%d\n",
    mas->tx_rem_bytes, mas->cur_bits_per_word);
  }
  if (mas->rx_rem_bytes)
   dev_err(mas->dev, "Premature done. rx_rem = %d bpw%d\n",
    mas->rx_rem_bytes, mas->cur_bits_per_word);
 }

 if ((m_irq & M_CMD_CANCEL_EN) || (m_irq & M_CMD_ABORT_EN)) {
  mas->cur_mcmd = CMD_NONE;
  complete(&mas->xfer_done);
 }

 writel(m_irq, se->base + SE_GENI_M_IRQ_CLEAR);
 spin_unlock_irqrestore(&mas->lock, flags);
 return IRQ_HANDLED;
}
