
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct clps711x_port {int gpios; } ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 struct clps711x_port* dev_get_drvdata (int ) ;
 unsigned int mctrl_gpio_get (int ,unsigned int*) ;

__attribute__((used)) static unsigned int uart_clps711x_get_mctrl(struct uart_port *port)
{
 unsigned int result = TIOCM_DSR | TIOCM_CTS | TIOCM_CAR;
 struct clps711x_port *s = dev_get_drvdata(port->dev);

 return mctrl_gpio_get(s->gpios, &result);
}
