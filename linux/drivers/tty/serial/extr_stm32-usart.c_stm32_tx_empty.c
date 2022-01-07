
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ membase; } ;
struct stm32_usart_offsets {scalar_t__ isr; } ;
struct stm32_port {TYPE_1__* info; } ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;


 unsigned int USART_SR_TXE ;
 unsigned int readl_relaxed (scalar_t__) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;

__attribute__((used)) static unsigned int stm32_tx_empty(struct uart_port *port)
{
 struct stm32_port *stm32_port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;

 return readl_relaxed(port->membase + ofs->isr) & USART_SR_TXE;
}
