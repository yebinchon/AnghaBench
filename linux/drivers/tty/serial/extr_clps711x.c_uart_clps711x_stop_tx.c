
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; int dev; } ;
struct clps711x_port {scalar_t__ tx_enabled; } ;


 struct clps711x_port* dev_get_drvdata (int ) ;
 int disable_irq (int ) ;

__attribute__((used)) static void uart_clps711x_stop_tx(struct uart_port *port)
{
 struct clps711x_port *s = dev_get_drvdata(port->dev);

 if (s->tx_enabled) {
  disable_irq(port->irq);
  s->tx_enabled = 0;
 }
}
