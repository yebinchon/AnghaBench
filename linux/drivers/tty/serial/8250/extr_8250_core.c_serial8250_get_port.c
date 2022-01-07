
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 struct uart_8250_port* serial8250_ports ;

struct uart_8250_port *serial8250_get_port(int line)
{
 return &serial8250_ports[line];
}
