
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct tegra_uart_port {struct uart_port uport; } ;
struct platform_device {int dummy; } ;


 struct tegra_uart_port* platform_get_drvdata (struct platform_device*) ;
 int tegra_uart_driver ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int tegra_uart_remove(struct platform_device *pdev)
{
 struct tegra_uart_port *tup = platform_get_drvdata(pdev);
 struct uart_port *u = &tup->uport;

 uart_remove_one_port(&tegra_uart_driver, u);
 return 0;
}
