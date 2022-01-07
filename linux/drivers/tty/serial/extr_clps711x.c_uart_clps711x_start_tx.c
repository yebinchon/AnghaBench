
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; int dev; } ;
struct clps711x_port {int tx_enabled; } ;


 struct clps711x_port* dev_get_drvdata (int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static void uart_clps711x_start_tx(struct uart_port *port)
{
 struct clps711x_port *s = dev_get_drvdata(port->dev);

 if (!s->tx_enabled) {
  s->tx_enabled = 1;
  enable_irq(port->irq);
 }
}
