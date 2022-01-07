
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa8250_data {int clk; int line; } ;
struct platform_device {int dummy; } ;


 int clk_unprepare (int ) ;
 struct pxa8250_data* platform_get_drvdata (struct platform_device*) ;
 int serial8250_unregister_port (int ) ;

__attribute__((used)) static int serial_pxa_remove(struct platform_device *pdev)
{
 struct pxa8250_data *data = platform_get_drvdata(pdev);

 serial8250_unregister_port(data->line);

 clk_unprepare(data->clk);

 return 0;
}
