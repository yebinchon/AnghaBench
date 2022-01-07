
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct stm32_usart_offsets {int cr3; } ;
struct stm32_port {int tx_dma_busy; TYPE_1__* info; } ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;


 int USART_CR3_DMAT ;
 int stm32_clr_bits (struct uart_port*,int ,int ) ;
 int stm32_transmit_chars (struct uart_port*) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;

__attribute__((used)) static void stm32_tx_dma_complete(void *arg)
{
 struct uart_port *port = arg;
 struct stm32_port *stm32port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32port->info->ofs;

 stm32_clr_bits(port, ofs->cr3, USART_CR3_DMAT);
 stm32port->tx_dma_busy = 0;


 stm32_transmit_chars(port);
}
