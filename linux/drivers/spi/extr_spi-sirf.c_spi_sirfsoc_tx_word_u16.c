
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int const u16 ;
struct sirfsoc_spi {int left_tx_word; TYPE_1__* regs; scalar_t__ base; int const* tx; } ;
struct TYPE_2__ {scalar_t__ txfifo_data; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void spi_sirfsoc_tx_word_u16(struct sirfsoc_spi *sspi)
{
 u32 data = 0;
 const u16 *tx = sspi->tx;

 if (tx) {
  data = *tx++;
  sspi->tx = tx;
 }

 writel(data, sspi->base + sspi->regs->txfifo_data);
 sspi->left_tx_word--;
}
