
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int PORT_VT8500 ;

__attribute__((used)) static void vt8500_config_port(struct uart_port *port, int flags)
{
 port->type = PORT_VT8500;
}
