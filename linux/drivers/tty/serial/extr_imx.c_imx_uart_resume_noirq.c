
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_port {int clk_ipg; } ;
struct device {int dummy; } ;


 int clk_enable (int ) ;
 struct imx_port* dev_get_drvdata (struct device*) ;
 int imx_uart_restore_context (struct imx_port*) ;
 int pinctrl_pm_select_default_state (struct device*) ;

__attribute__((used)) static int imx_uart_resume_noirq(struct device *dev)
{
 struct imx_port *sport = dev_get_drvdata(dev);
 int ret;

 pinctrl_pm_select_default_state(dev);

 ret = clk_enable(sport->clk_ipg);
 if (ret)
  return ret;

 imx_uart_restore_context(sport);

 return 0;
}
