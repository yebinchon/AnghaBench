
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {struct cdns_uart* private_data; } ;
struct cdns_uart {scalar_t__ cts_override; } ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;

__attribute__((used)) static unsigned int cdns_uart_get_mctrl(struct uart_port *port)
{
 struct cdns_uart *cdns_uart_data = port->private_data;

 if (cdns_uart_data->cts_override)
  return 0;

 return TIOCM_CTS | TIOCM_DSR | TIOCM_CAR;
}
