
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_port {int clk_ipg; int port; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct imx_port* dev_get_drvdata (struct device*) ;
 int imx_uart_uart_driver ;
 int uart_resume_port (int *,int *) ;

__attribute__((used)) static int imx_uart_thaw(struct device *dev)
{
 struct imx_port *sport = dev_get_drvdata(dev);

 uart_resume_port(&imx_uart_uart_driver, &sport->port);

 clk_disable_unprepare(sport->clk_ipg);

 return 0;
}
