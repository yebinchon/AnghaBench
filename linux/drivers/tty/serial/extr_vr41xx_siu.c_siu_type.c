
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 char const* siu_type_name (struct uart_port*) ;

__attribute__((used)) static const char *siu_type(struct uart_port *port)
{
 return siu_type_name(port);
}
