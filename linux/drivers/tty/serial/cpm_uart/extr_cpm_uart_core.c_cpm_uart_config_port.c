
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; int line; } ;


 int PORT_CPM ;
 int UART_CONFIG_TYPE ;
 int cpm_uart_request_port (struct uart_port*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void cpm_uart_config_port(struct uart_port *port, int flags)
{
 pr_debug("CPM uart[%d]:config_port\n", port->line);

 if (flags & UART_CONFIG_TYPE) {
  port->type = PORT_CPM;
  cpm_uart_request_port(port);
 }
}
