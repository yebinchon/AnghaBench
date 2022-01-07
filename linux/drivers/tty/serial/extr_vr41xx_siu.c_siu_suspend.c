
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {scalar_t__ type; int * dev; } ;
struct platform_device {int dev; } ;
typedef int pm_message_t ;
struct TYPE_3__ {int nr; } ;


 scalar_t__ PORT_VR41XX_DSIU ;
 scalar_t__ PORT_VR41XX_SIU ;
 TYPE_1__ siu_uart_driver ;
 struct uart_port* siu_uart_ports ;
 int uart_suspend_port (TYPE_1__*,struct uart_port*) ;

__attribute__((used)) static int siu_suspend(struct platform_device *dev, pm_message_t state)
{
 struct uart_port *port;
 int i;

 for (i = 0; i < siu_uart_driver.nr; i++) {
  port = &siu_uart_ports[i];
  if ((port->type == PORT_VR41XX_SIU ||
       port->type == PORT_VR41XX_DSIU) && port->dev == &dev->dev)
   uart_suspend_port(&siu_uart_driver, port);

 }

 return 0;
}
