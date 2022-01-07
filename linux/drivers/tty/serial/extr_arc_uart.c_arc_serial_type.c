
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 char const* DRIVER_NAME ;
 scalar_t__ PORT_ARC ;

__attribute__((used)) static const char *arc_serial_type(struct uart_port *port)
{
 return port->type == PORT_ARC ? DRIVER_NAME : ((void*)0);
}
