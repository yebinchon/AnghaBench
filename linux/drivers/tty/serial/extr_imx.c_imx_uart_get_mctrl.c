
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct imx_port {int gpios; } ;


 unsigned int imx_uart_get_hwmctrl (struct imx_port*) ;
 int mctrl_gpio_get (int ,unsigned int*) ;

__attribute__((used)) static unsigned int imx_uart_get_mctrl(struct uart_port *port)
{
 struct imx_port *sport = (struct imx_port *)port;
 unsigned int ret = imx_uart_get_hwmctrl(sport);

 mctrl_gpio_get(sport->gpios, &ret);

 return ret;
}
