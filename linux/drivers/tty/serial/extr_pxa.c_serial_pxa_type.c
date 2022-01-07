
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pxa_port {char const* name; } ;
struct uart_port {int dummy; } ;



__attribute__((used)) static const char *
serial_pxa_type(struct uart_port *port)
{
 struct uart_pxa_port *up = (struct uart_pxa_port *)port;
 return up->name;
}
