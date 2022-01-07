
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct sirfsoc_spi {int left_rx_word; scalar_t__* rx; TYPE_1__* regs; scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__ rxfifo_data; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static void spi_sirfsoc_rx_word_u8(struct sirfsoc_spi *sspi)
{
 u32 data;
 u8 *rx = sspi->rx;

 data = readl(sspi->base + sspi->regs->rxfifo_data);

 if (rx) {
  *rx++ = (u8) data;
  sspi->rx = rx;
 }

 sspi->left_rx_word--;
}
