
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; } ;
struct ltq_uart_port {int common_irq; struct uart_port port; } ;
struct device {int of_node; } ;


 int dev_err (struct device*,char*) ;
 int of_irq_get (int ,int ) ;

__attribute__((used)) static int fetch_irq_intel(struct device *dev, struct ltq_uart_port *ltq_port)
{
 struct uart_port *port = &ltq_port->port;
 int ret;

 ret = of_irq_get(dev->of_node, 0);
 if (ret < 0) {
  dev_err(dev, "failed to fetch IRQ for serial port\n");
  return ret;
 }
 ltq_port->common_irq = ret;
 port->irq = ret;

 return 0;
}
