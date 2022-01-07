
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int * dev; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {int nr; } ;


 TYPE_1__ siu_uart_driver ;
 struct uart_port* siu_uart_ports ;
 int uart_remove_one_port (TYPE_1__*,struct uart_port*) ;
 int uart_unregister_driver (TYPE_1__*) ;

__attribute__((used)) static int siu_remove(struct platform_device *dev)
{
 struct uart_port *port;
 int i;

 for (i = 0; i < siu_uart_driver.nr; i++) {
  port = &siu_uart_ports[i];
  if (port->dev == &dev->dev) {
   uart_remove_one_port(&siu_uart_driver, port);
   port->dev = ((void*)0);
  }
 }

 uart_unregister_driver(&siu_uart_driver);

 return 0;
}
