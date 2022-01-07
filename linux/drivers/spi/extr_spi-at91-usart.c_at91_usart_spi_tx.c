
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct at91_usart_spi {unsigned int current_tx_remaining_bytes; TYPE_1__* current_transfer; } ;
struct TYPE_2__ {unsigned int len; int * tx_buf; } ;


 int THR ;
 scalar_t__ at91_usart_spi_tx_ready (struct at91_usart_spi*) ;
 int at91_usart_spi_writeb (struct at91_usart_spi*,int ,int const) ;

__attribute__((used)) static inline void at91_usart_spi_tx(struct at91_usart_spi *aus)
{
 unsigned int len = aus->current_transfer->len;
 unsigned int remaining = aus->current_tx_remaining_bytes;
 const u8 *tx_buf = aus->current_transfer->tx_buf;

 if (!remaining)
  return;

 if (at91_usart_spi_tx_ready(aus)) {
  at91_usart_spi_writeb(aus, THR, tx_buf[len - remaining]);
  aus->current_tx_remaining_bytes--;
 }
}
