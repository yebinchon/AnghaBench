
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int stm32_tx_interrupt_disable (struct uart_port*) ;

__attribute__((used)) static void stm32_stop_tx(struct uart_port *port)
{
 stm32_tx_interrupt_disable(port);
}
