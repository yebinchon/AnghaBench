
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int * dev; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct platform_device {int dev; } ;
typedef int pm_message_t ;


 scalar_t__ PORT_UNKNOWN ;
 int UART_NR ;
 struct uart_8250_port* serial8250_ports ;
 int serial8250_reg ;
 int uart_suspend_port (int *,TYPE_1__*) ;

__attribute__((used)) static int serial8250_suspend(struct platform_device *dev, pm_message_t state)
{
 int i;

 for (i = 0; i < UART_NR; i++) {
  struct uart_8250_port *up = &serial8250_ports[i];

  if (up->port.type != PORT_UNKNOWN && up->port.dev == &dev->dev)
   uart_suspend_port(&serial8250_reg, &up->port);
 }

 return 0;
}
