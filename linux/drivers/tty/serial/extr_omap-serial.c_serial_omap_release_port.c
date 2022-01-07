
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;


 int dev_dbg (int ,char*) ;

__attribute__((used)) static void serial_omap_release_port(struct uart_port *port)
{
 dev_dbg(port->dev, "serial_omap_release_port+\n");
}
