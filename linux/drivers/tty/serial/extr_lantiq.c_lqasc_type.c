
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 char const* DRVNAME ;
 scalar_t__ PORT_LTQ_ASC ;

__attribute__((used)) static const char*
lqasc_type(struct uart_port *port)
{
 if (port->type == PORT_LTQ_ASC)
  return DRVNAME;
 else
  return ((void*)0);
}
