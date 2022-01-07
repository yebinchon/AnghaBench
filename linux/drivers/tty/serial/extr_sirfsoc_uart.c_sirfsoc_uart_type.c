
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 scalar_t__ SIRFSOC_PORT_TYPE ;
 char const* SIRFUART_PORT_NAME ;

__attribute__((used)) static const char *sirfsoc_uart_type(struct uart_port *port)
{
 return port->type == SIRFSOC_PORT_TYPE ? SIRFUART_PORT_NAME : ((void*)0);
}
