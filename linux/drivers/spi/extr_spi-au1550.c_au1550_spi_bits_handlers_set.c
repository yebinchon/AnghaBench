
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1550_spi {int * irq_callback; int * txrx_bufs; int * tx_word; int * rx_word; scalar_t__ usedma; } ;


 int au1550_spi_dma_irq_callback ;
 int au1550_spi_dma_txrxb ;
 int au1550_spi_pio_irq_callback ;
 int au1550_spi_pio_txrxb ;
 int au1550_spi_rx_word_16 ;
 int au1550_spi_rx_word_32 ;
 int au1550_spi_rx_word_8 ;
 int au1550_spi_tx_word_16 ;
 int au1550_spi_tx_word_32 ;
 int au1550_spi_tx_word_8 ;

__attribute__((used)) static void au1550_spi_bits_handlers_set(struct au1550_spi *hw, int bpw)
{
 if (bpw <= 8) {
  if (hw->usedma) {
   hw->txrx_bufs = &au1550_spi_dma_txrxb;
   hw->irq_callback = &au1550_spi_dma_irq_callback;
  } else {
   hw->rx_word = &au1550_spi_rx_word_8;
   hw->tx_word = &au1550_spi_tx_word_8;
   hw->txrx_bufs = &au1550_spi_pio_txrxb;
   hw->irq_callback = &au1550_spi_pio_irq_callback;
  }
 } else if (bpw <= 16) {
  hw->rx_word = &au1550_spi_rx_word_16;
  hw->tx_word = &au1550_spi_tx_word_16;
  hw->txrx_bufs = &au1550_spi_pio_txrxb;
  hw->irq_callback = &au1550_spi_pio_irq_callback;
 } else {
  hw->rx_word = &au1550_spi_rx_word_32;
  hw->tx_word = &au1550_spi_tx_word_32;
  hw->txrx_bufs = &au1550_spi_pio_txrxb;
  hw->irq_callback = &au1550_spi_pio_irq_callback;
 }
}
