
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 char const* DRIVER_NAME ;
 scalar_t__ PORT_MPS2UART ;

__attribute__((used)) static const char *mps2_uart_type(struct uart_port *port)
{
 return (port->type == PORT_MPS2UART) ? DRIVER_NAME : ((void*)0);
}
