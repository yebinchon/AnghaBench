
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ UA_EMI_REC ;
 int cpu_relax () ;
 scalar_t__ digicolor_uart_tx_full (struct uart_port*) ;
 int writeb_relaxed (int,scalar_t__) ;

__attribute__((used)) static void digicolor_uart_console_putchar(struct uart_port *port, int ch)
{
 while (digicolor_uart_tx_full(port))
  cpu_relax();

 writeb_relaxed(ch, port->membase + UA_EMI_REC);
}
