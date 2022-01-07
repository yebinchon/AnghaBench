
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; int line; } ;


 scalar_t__ PORT_CPM ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static const char *cpm_uart_type(struct uart_port *port)
{
 pr_debug("CPM uart[%d]:uart_type\n", port->line);

 return port->type == PORT_CPM ? "CPM UART" : ((void*)0);
}
