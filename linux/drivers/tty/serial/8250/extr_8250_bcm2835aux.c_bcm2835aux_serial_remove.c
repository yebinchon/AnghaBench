
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int line; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct bcm2835aux_data {int clk; TYPE_2__ uart; } ;


 int clk_disable_unprepare (int ) ;
 struct bcm2835aux_data* platform_get_drvdata (struct platform_device*) ;
 int serial8250_unregister_port (int ) ;

__attribute__((used)) static int bcm2835aux_serial_remove(struct platform_device *pdev)
{
 struct bcm2835aux_data *data = platform_get_drvdata(pdev);

 serial8250_unregister_port(data->uart.port.line);
 clk_disable_unprepare(data->clk);

 return 0;
}
