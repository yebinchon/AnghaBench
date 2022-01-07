
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct stm32_usart_offsets {int cr1; int cr3; } ;
struct stm32_port {scalar_t__ fifoen; TYPE_1__* info; } ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;


 int USART_CR1_TXEIE ;
 int USART_CR3_TXFTIE ;
 int stm32_clr_bits (struct uart_port*,int ,int ) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;

__attribute__((used)) static void stm32_tx_interrupt_disable(struct uart_port *port)
{
 struct stm32_port *stm32_port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;

 if (stm32_port->fifoen)
  stm32_clr_bits(port, ofs->cr3, USART_CR3_TXFTIE);
 else
  stm32_clr_bits(port, ofs->cr1, USART_CR1_TXEIE);
}
