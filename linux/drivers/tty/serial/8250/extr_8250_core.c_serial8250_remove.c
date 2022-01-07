
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dev; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct platform_device {int dev; } ;


 int nr_uarts ;
 struct uart_8250_port* serial8250_ports ;
 int serial8250_unregister_port (int) ;

__attribute__((used)) static int serial8250_remove(struct platform_device *dev)
{
 int i;

 for (i = 0; i < nr_uarts; i++) {
  struct uart_8250_port *up = &serial8250_ports[i];

  if (up->port.dev == &dev->dev)
   serial8250_unregister_port(i);
 }
 return 0;
}
