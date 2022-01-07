
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct imx_port {int port; } ;


 int imx_uart_uart_driver ;
 struct imx_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int imx_uart_remove(struct platform_device *pdev)
{
 struct imx_port *sport = platform_get_drvdata(pdev);

 return uart_remove_one_port(&imx_uart_uart_driver, &sport->port);
}
