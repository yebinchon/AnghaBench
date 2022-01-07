
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct uart_pxa_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;


 int PORT_PXA ;

__attribute__((used)) static void serial_pxa_config_port(struct uart_port *port, int flags)
{
 struct uart_pxa_port *up = (struct uart_pxa_port *)port;
 up->port.type = PORT_PXA;
}
