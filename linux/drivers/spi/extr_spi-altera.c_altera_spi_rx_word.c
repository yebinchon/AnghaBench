
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_spi {unsigned int* rx; int bytes_per_word; size_t count; scalar_t__ base; } ;


 scalar_t__ ALTERA_SPI_RXDATA ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static void altera_spi_rx_word(struct altera_spi *hw)
{
 unsigned int rxd;

 rxd = readl(hw->base + ALTERA_SPI_RXDATA);
 if (hw->rx) {
  switch (hw->bytes_per_word) {
  case 1:
   hw->rx[hw->count] = rxd;
   break;
  case 2:
   hw->rx[hw->count * 2] = rxd;
   hw->rx[hw->count * 2 + 1] = rxd >> 8;
   break;
  }
 }

 hw->count++;
}
