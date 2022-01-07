
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct clps711x_port {int gpios; } ;


 struct clps711x_port* dev_get_drvdata (int ) ;
 int mctrl_gpio_set (int ,unsigned int) ;

__attribute__((used)) static void uart_clps711x_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct clps711x_port *s = dev_get_drvdata(port->dev);

 mctrl_gpio_set(s->gpios, mctrl);
}
