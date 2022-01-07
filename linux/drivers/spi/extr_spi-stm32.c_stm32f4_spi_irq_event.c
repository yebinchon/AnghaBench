
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_spi {scalar_t__ cur_comm; scalar_t__ tx_len; scalar_t__ rx_len; int lock; scalar_t__ tx_buf; scalar_t__ base; int dev; int cur_usedma; } ;
struct spi_master {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 scalar_t__ SPI_3WIRE_TX ;
 scalar_t__ SPI_FULL_DUPLEX ;
 scalar_t__ SPI_SIMPLEX_TX ;
 int STM32F4_SPI_CR2 ;
 int STM32F4_SPI_CR2_ERRIE ;
 int STM32F4_SPI_CR2_RXNEIE ;
 int STM32F4_SPI_CR2_TXEIE ;
 scalar_t__ STM32F4_SPI_DR ;
 scalar_t__ STM32F4_SPI_SR ;
 int STM32F4_SPI_SR_BSY ;
 int STM32F4_SPI_SR_OVR ;
 int STM32F4_SPI_SR_RXNE ;
 int STM32F4_SPI_SR_TXE ;
 int dev_dbg (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int readl_relaxed (scalar_t__) ;
 struct stm32_spi* spi_master_get_devdata (struct spi_master*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_spi_clr_bits (struct stm32_spi*,int ,int) ;
 int stm32f4_spi_read_rx (struct stm32_spi*) ;
 int stm32f4_spi_write_tx (struct stm32_spi*) ;

__attribute__((used)) static irqreturn_t stm32f4_spi_irq_event(int irq, void *dev_id)
{
 struct spi_master *master = dev_id;
 struct stm32_spi *spi = spi_master_get_devdata(master);
 u32 sr, mask = 0;
 unsigned long flags;
 bool end = 0;

 spin_lock_irqsave(&spi->lock, flags);

 sr = readl_relaxed(spi->base + STM32F4_SPI_SR);




 sr &= ~STM32F4_SPI_SR_BSY;

 if (!spi->cur_usedma && (spi->cur_comm == SPI_SIMPLEX_TX ||
     spi->cur_comm == SPI_3WIRE_TX)) {

  sr &= ~STM32F4_SPI_SR_OVR | STM32F4_SPI_SR_RXNE;
  mask |= STM32F4_SPI_SR_TXE;
 }

 if (!spi->cur_usedma && spi->cur_comm == SPI_FULL_DUPLEX) {

  sr &= ~STM32F4_SPI_SR_TXE;
  mask |= STM32F4_SPI_SR_RXNE | STM32F4_SPI_SR_OVR;
 }

 if (!(sr & mask)) {
  dev_dbg(spi->dev, "spurious IT (sr=0x%08x)\n", sr);
  spin_unlock_irqrestore(&spi->lock, flags);
  return IRQ_NONE;
 }

 if (sr & STM32F4_SPI_SR_OVR) {
  dev_warn(spi->dev, "Overrun: received value discarded\n");


  readl_relaxed(spi->base + STM32F4_SPI_DR);
  readl_relaxed(spi->base + STM32F4_SPI_SR);






  end = 1;
  goto end_irq;
 }

 if (sr & STM32F4_SPI_SR_TXE) {
  if (spi->tx_buf)
   stm32f4_spi_write_tx(spi);
  if (spi->tx_len == 0)
   end = 1;
 }

 if (sr & STM32F4_SPI_SR_RXNE) {
  stm32f4_spi_read_rx(spi);
  if (spi->rx_len == 0)
   end = 1;
  else
   stm32f4_spi_write_tx(spi);
 }

end_irq:
 if (end) {

  stm32_spi_clr_bits(spi, STM32F4_SPI_CR2,
     STM32F4_SPI_CR2_TXEIE |
     STM32F4_SPI_CR2_RXNEIE |
     STM32F4_SPI_CR2_ERRIE);
  spin_unlock_irqrestore(&spi->lock, flags);
  return IRQ_WAKE_THREAD;
 }

 spin_unlock_irqrestore(&spi->lock, flags);
 return IRQ_HANDLED;
}
