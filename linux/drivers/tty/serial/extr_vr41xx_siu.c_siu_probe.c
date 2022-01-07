
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct uart_port {int * dev; int * ops; } ;
struct platform_device {int dev; } ;
struct TYPE_5__ {int nr; } ;


 int ENODEV ;
 int siu_init_ports (struct platform_device*) ;
 TYPE_1__ siu_uart_driver ;
 int siu_uart_ops ;
 struct uart_port* siu_uart_ports ;
 int uart_add_one_port (TYPE_1__*,struct uart_port*) ;
 int uart_register_driver (TYPE_1__*) ;
 int uart_unregister_driver (TYPE_1__*) ;

__attribute__((used)) static int siu_probe(struct platform_device *dev)
{
 struct uart_port *port;
 int num, i, retval;

 num = siu_init_ports(dev);
 if (num <= 0)
  return -ENODEV;

 siu_uart_driver.nr = num;
 retval = uart_register_driver(&siu_uart_driver);
 if (retval)
  return retval;

 for (i = 0; i < num; i++) {
  port = &siu_uart_ports[i];
  port->ops = &siu_uart_ops;
  port->dev = &dev->dev;

  retval = uart_add_one_port(&siu_uart_driver, port);
  if (retval < 0) {
   port->dev = ((void*)0);
   break;
  }
 }

 if (i == 0 && retval < 0) {
  uart_unregister_driver(&siu_uart_driver);
  return retval;
 }

 return 0;
}
