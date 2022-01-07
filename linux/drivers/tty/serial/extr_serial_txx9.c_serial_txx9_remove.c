
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dev; } ;
struct uart_txx9_port {TYPE_1__ port; } ;
struct platform_device {int dev; } ;


 int UART_NR ;
 struct uart_txx9_port* serial_txx9_ports ;
 int serial_txx9_unregister_port (int) ;

__attribute__((used)) static int serial_txx9_remove(struct platform_device *dev)
{
 int i;

 for (i = 0; i < UART_NR; i++) {
  struct uart_txx9_port *up = &serial_txx9_ports[i];

  if (up->port.dev == &dev->dev)
   serial_txx9_unregister_port(i);
 }
 return 0;
}
