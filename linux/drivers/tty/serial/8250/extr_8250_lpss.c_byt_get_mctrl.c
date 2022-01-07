
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_DSR ;
 unsigned int serial8250_do_get_mctrl (struct uart_port*) ;

__attribute__((used)) static unsigned int byt_get_mctrl(struct uart_port *port)
{
 unsigned int ret = serial8250_do_get_mctrl(port);


 ret |= TIOCM_CAR | TIOCM_DSR;

 return ret;
}
