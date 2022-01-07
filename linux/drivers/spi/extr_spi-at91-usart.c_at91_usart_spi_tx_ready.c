
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct at91_usart_spi {int status; } ;


 int US_IR_TXRDY ;

__attribute__((used)) static inline u32 at91_usart_spi_tx_ready(struct at91_usart_spi *aus)
{
 return aus->status & US_IR_TXRDY;
}
