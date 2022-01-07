
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_port {int clk_ipg; int port; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 struct imx_port* dev_get_drvdata (struct device*) ;
 int imx_uart_uart_driver ;
 int uart_suspend_port (int *,int *) ;

__attribute__((used)) static int imx_uart_freeze(struct device *dev)
{
 struct imx_port *sport = dev_get_drvdata(dev);

 uart_suspend_port(&imx_uart_uart_driver, &sport->port);

 return clk_prepare_enable(sport->clk_ipg);
}
