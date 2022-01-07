
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct of_serial_info {int clk; int rst; int line; } ;


 int clk_disable_unprepare (int ) ;
 int kfree (struct of_serial_info*) ;
 struct of_serial_info* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int reset_control_assert (int ) ;
 int serial8250_unregister_port (int ) ;

__attribute__((used)) static int of_platform_serial_remove(struct platform_device *ofdev)
{
 struct of_serial_info *info = platform_get_drvdata(ofdev);

 serial8250_unregister_port(info->line);

 reset_control_assert(info->rst);
 pm_runtime_put_sync(&ofdev->dev);
 pm_runtime_disable(&ofdev->dev);
 clk_disable_unprepare(info->clk);
 kfree(info);
 return 0;
}
