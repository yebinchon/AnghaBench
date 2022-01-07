
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 char const* DRIVER_NAME ;
 scalar_t__ PORT_ASC ;

__attribute__((used)) static const char *asc_type(struct uart_port *port)
{
 return (port->type == PORT_ASC) ? DRIVER_NAME : ((void*)0);
}
