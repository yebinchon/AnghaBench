
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int PORT_21285 ;
 int UART_CONFIG_TYPE ;
 scalar_t__ serial21285_request_port (struct uart_port*) ;

__attribute__((used)) static void serial21285_config_port(struct uart_port *port, int flags)
{
 if (flags & UART_CONFIG_TYPE && serial21285_request_port(port) == 0)
  port->type = PORT_21285;
}
