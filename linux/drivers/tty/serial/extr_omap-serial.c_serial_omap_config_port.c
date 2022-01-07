
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int flags; int type; int line; int dev; } ;
struct uart_omap_port {TYPE_1__ port; } ;


 int PORT_OMAP ;
 int UPF_HARD_FLOW ;
 int UPF_SOFT_FLOW ;
 int dev_dbg (int ,char*,int ) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static void serial_omap_config_port(struct uart_port *port, int flags)
{
 struct uart_omap_port *up = to_uart_omap_port(port);

 dev_dbg(up->port.dev, "serial_omap_config_port+%d\n",
       up->port.line);
 up->port.type = PORT_OMAP;
 up->port.flags |= UPF_SOFT_FLOW | UPF_HARD_FLOW;
}
