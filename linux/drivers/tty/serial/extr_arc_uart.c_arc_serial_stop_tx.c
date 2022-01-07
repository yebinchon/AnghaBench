
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int TXEMPTY ;
 int UART_GET_STATUS (struct uart_port*) ;
 int UART_TX_IRQ_DISABLE (struct uart_port*) ;
 int cpu_relax () ;

__attribute__((used)) static void arc_serial_stop_tx(struct uart_port *port)
{
 while (!(UART_GET_STATUS(port) & TXEMPTY))
  cpu_relax();

 UART_TX_IRQ_DISABLE(port);
}
