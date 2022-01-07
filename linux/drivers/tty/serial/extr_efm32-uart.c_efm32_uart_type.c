
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;


 scalar_t__ PORT_EFMUART ;

__attribute__((used)) static const char *efm32_uart_type(struct uart_port *port)
{
 return port->type == PORT_EFMUART ? "efm32-uart" : ((void*)0);
}
