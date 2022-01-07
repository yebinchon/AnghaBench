
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 scalar_t__ PORT_ALTERA_JTAGUART ;

__attribute__((used)) static const char *altera_jtaguart_type(struct uart_port *port)
{
 return (port->type == PORT_ALTERA_JTAGUART) ? "Altera JTAG UART" : ((void*)0);
}
