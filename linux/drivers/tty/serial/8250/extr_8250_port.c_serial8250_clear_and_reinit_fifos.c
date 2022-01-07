
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int fcr; } ;


 int UART_FCR ;
 int serial8250_clear_fifos (struct uart_8250_port*) ;
 int serial_out (struct uart_8250_port*,int ,int ) ;

void serial8250_clear_and_reinit_fifos(struct uart_8250_port *p)
{
 serial8250_clear_fifos(p);
 serial_out(p, UART_FCR, p->fcr);
}
