
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct imx_port {int clk_ipg; TYPE_1__ port; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct imx_port* dev_get_drvdata (struct device*) ;
 int enable_irq (int ) ;
 int imx_uart_enable_wakeup (struct imx_port*,int) ;
 int imx_uart_uart_driver ;
 int uart_resume_port (int *,TYPE_1__*) ;

__attribute__((used)) static int imx_uart_resume(struct device *dev)
{
 struct imx_port *sport = dev_get_drvdata(dev);


 imx_uart_enable_wakeup(sport, 0);

 uart_resume_port(&imx_uart_uart_driver, &sport->port);
 enable_irq(sport->port.irq);

 clk_disable_unprepare(sport->clk_ipg);

 return 0;
}
