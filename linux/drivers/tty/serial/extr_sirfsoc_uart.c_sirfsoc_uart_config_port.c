
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int SIRFSOC_PORT_TYPE ;
 int UART_CONFIG_TYPE ;
 int sirfsoc_uart_request_port (struct uart_port*) ;

__attribute__((used)) static void sirfsoc_uart_config_port(struct uart_port *port, int flags)
{
 if (flags & UART_CONFIG_TYPE) {
  port->type = SIRFSOC_PORT_TYPE;
  sirfsoc_uart_request_port(port);
 }
}
