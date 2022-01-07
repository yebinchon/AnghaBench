
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct imx_port {int gpios; int timer; } ;


 int jiffies ;
 int mctrl_gpio_enable_ms (int ) ;
 int mod_timer (int *,int ) ;

__attribute__((used)) static void imx_uart_enable_ms(struct uart_port *port)
{
 struct imx_port *sport = (struct imx_port *)port;

 mod_timer(&sport->timer, jiffies);

 mctrl_gpio_enable_ms(sport->gpios);
}
