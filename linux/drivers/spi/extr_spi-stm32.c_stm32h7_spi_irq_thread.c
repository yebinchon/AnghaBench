
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_spi {scalar_t__ rx_len; scalar_t__ tx_len; int lock; scalar_t__ base; scalar_t__ rx_buf; scalar_t__ cur_usedma; scalar_t__ tx_buf; int dev; } ;
struct spi_master {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ STM32H7_SPI_IER ;
 scalar_t__ STM32H7_SPI_IFCR ;
 scalar_t__ STM32H7_SPI_SR ;
 int STM32H7_SPI_SR_EOT ;
 int STM32H7_SPI_SR_MODF ;
 int STM32H7_SPI_SR_OVR ;
 int STM32H7_SPI_SR_RXP ;
 int STM32H7_SPI_SR_SUSP ;
 int STM32H7_SPI_SR_TXP ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_warn (int ,char*) ;
 int readl_relaxed (scalar_t__) ;
 int spi_finalize_current_transfer (struct spi_master*) ;
 struct stm32_spi* spi_master_get_devdata (struct spi_master*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32h7_spi_disable (struct stm32_spi*) ;
 int stm32h7_spi_read_rxfifo (struct stm32_spi*,int) ;
 int stm32h7_spi_write_txfifo (struct stm32_spi*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t stm32h7_spi_irq_thread(int irq, void *dev_id)
{
 struct spi_master *master = dev_id;
 struct stm32_spi *spi = spi_master_get_devdata(master);
 u32 sr, ier, mask;
 unsigned long flags;
 bool end = 0;

 spin_lock_irqsave(&spi->lock, flags);

 sr = readl_relaxed(spi->base + STM32H7_SPI_SR);
 ier = readl_relaxed(spi->base + STM32H7_SPI_IER);

 mask = ier;

 mask |= STM32H7_SPI_SR_SUSP;





 if (spi->rx_buf && !spi->cur_usedma)
  mask |= STM32H7_SPI_SR_RXP;

 if (!(sr & mask)) {
  dev_dbg(spi->dev, "spurious IT (sr=0x%08x, ier=0x%08x)\n",
   sr, ier);
  spin_unlock_irqrestore(&spi->lock, flags);
  return IRQ_NONE;
 }

 if (sr & STM32H7_SPI_SR_SUSP) {
  dev_warn(spi->dev, "Communication suspended\n");
  if (!spi->cur_usedma && (spi->rx_buf && (spi->rx_len > 0)))
   stm32h7_spi_read_rxfifo(spi, 0);




  if (spi->cur_usedma)
   end = 1;
 }

 if (sr & STM32H7_SPI_SR_MODF) {
  dev_warn(spi->dev, "Mode fault: transfer aborted\n");
  end = 1;
 }

 if (sr & STM32H7_SPI_SR_OVR) {
  dev_warn(spi->dev, "Overrun: received value discarded\n");
  if (!spi->cur_usedma && (spi->rx_buf && (spi->rx_len > 0)))
   stm32h7_spi_read_rxfifo(spi, 0);




  if (spi->cur_usedma)
   end = 1;
 }

 if (sr & STM32H7_SPI_SR_EOT) {
  if (!spi->cur_usedma && (spi->rx_buf && (spi->rx_len > 0)))
   stm32h7_spi_read_rxfifo(spi, 1);
  end = 1;
 }

 if (sr & STM32H7_SPI_SR_TXP)
  if (!spi->cur_usedma && (spi->tx_buf && (spi->tx_len > 0)))
   stm32h7_spi_write_txfifo(spi);

 if (sr & STM32H7_SPI_SR_RXP)
  if (!spi->cur_usedma && (spi->rx_buf && (spi->rx_len > 0)))
   stm32h7_spi_read_rxfifo(spi, 0);

 writel_relaxed(mask, spi->base + STM32H7_SPI_IFCR);

 spin_unlock_irqrestore(&spi->lock, flags);

 if (end) {
  spi_finalize_current_transfer(master);
  stm32h7_spi_disable(spi);
 }

 return IRQ_HANDLED;
}
