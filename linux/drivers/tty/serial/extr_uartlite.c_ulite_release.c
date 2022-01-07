
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uartlite_data {int ulite_uart_driver; } ;
struct uart_port {scalar_t__ mapbase; struct uartlite_data* private_data; } ;
struct device {int dummy; } ;


 struct uart_port* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int uart_remove_one_port (int ,struct uart_port*) ;

__attribute__((used)) static int ulite_release(struct device *dev)
{
 struct uart_port *port = dev_get_drvdata(dev);
 int rc = 0;

 if (port) {
  struct uartlite_data *pdata = port->private_data;

  rc = uart_remove_one_port(pdata->ulite_uart_driver, port);
  dev_set_drvdata(dev, ((void*)0));
  port->mapbase = 0;
 }

 return rc;
}
