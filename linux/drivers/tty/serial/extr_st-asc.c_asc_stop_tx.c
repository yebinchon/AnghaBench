
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int asc_disable_tx_interrupts (struct uart_port*) ;

__attribute__((used)) static void asc_stop_tx(struct uart_port *port)
{
 asc_disable_tx_interrupts(port);
}
