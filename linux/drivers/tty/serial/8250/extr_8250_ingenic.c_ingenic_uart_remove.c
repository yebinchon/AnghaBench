
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ingenic_uart_data {int clk_baud; int clk_module; int line; } ;


 int clk_disable_unprepare (int ) ;
 struct ingenic_uart_data* platform_get_drvdata (struct platform_device*) ;
 int serial8250_unregister_port (int ) ;

__attribute__((used)) static int ingenic_uart_remove(struct platform_device *pdev)
{
 struct ingenic_uart_data *data = platform_get_drvdata(pdev);

 serial8250_unregister_port(data->line);
 clk_disable_unprepare(data->clk_module);
 clk_disable_unprepare(data->clk_baud);
 return 0;
}
