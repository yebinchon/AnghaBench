
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; } ;


 int asc_disable_rx_interrupts (struct uart_port*) ;
 int asc_disable_tx_interrupts (struct uart_port*) ;
 int free_irq (int ,struct uart_port*) ;

__attribute__((used)) static void asc_shutdown(struct uart_port *port)
{
 asc_disable_tx_interrupts(port);
 asc_disable_rx_interrupts(port);
 free_irq(port->irq, port);
}
