
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int line; int dev; } ;
struct uart_omap_port {char const* name; TYPE_1__ port; } ;


 int dev_dbg (int ,char*,int ) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static const char *
serial_omap_type(struct uart_port *port)
{
 struct uart_omap_port *up = to_uart_omap_port(port);

 dev_dbg(up->port.dev, "serial_omap_type+%d\n", up->port.line);
 return up->name;
}
