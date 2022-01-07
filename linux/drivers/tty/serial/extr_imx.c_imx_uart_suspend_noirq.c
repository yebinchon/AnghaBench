
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_port {int clk_ipg; } ;
struct device {int dummy; } ;


 int clk_disable (int ) ;
 struct imx_port* dev_get_drvdata (struct device*) ;
 int imx_uart_save_context (struct imx_port*) ;
 int pinctrl_pm_select_sleep_state (struct device*) ;

__attribute__((used)) static int imx_uart_suspend_noirq(struct device *dev)
{
 struct imx_port *sport = dev_get_drvdata(dev);

 imx_uart_save_context(sport);

 clk_disable(sport->clk_ipg);

 pinctrl_pm_select_sleep_state(dev);

 return 0;
}
