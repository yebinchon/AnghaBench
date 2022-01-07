
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 scalar_t__ PORT_RP2 ;

__attribute__((used)) static const char *rp2_uart_type(struct uart_port *port)
{
 return (port->type == PORT_RP2) ? "RocketPort 2 UART" : ((void*)0);
}
