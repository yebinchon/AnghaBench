
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ar933x_uart_port {int clk; int port; } ;


 int ar933x_uart_driver ;
 int clk_disable_unprepare (int ) ;
 struct ar933x_uart_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int ar933x_uart_remove(struct platform_device *pdev)
{
 struct ar933x_uart_port *up;

 up = platform_get_drvdata(pdev);

 if (up) {
  uart_remove_one_port(&ar933x_uart_driver, &up->port);
  clk_disable_unprepare(up->clk);
 }

 return 0;
}
