
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {TYPE_1__* ops; } ;
struct TYPE_2__ {char* (* type ) (struct uart_port*) ;} ;


 char* stub1 (struct uart_port*) ;

__attribute__((used)) static const char *uart_type(struct uart_port *port)
{
 const char *str = ((void*)0);

 if (port->ops->type)
  str = port->ops->type(port);

 if (!str)
  str = "unknown";

 return str;
}
