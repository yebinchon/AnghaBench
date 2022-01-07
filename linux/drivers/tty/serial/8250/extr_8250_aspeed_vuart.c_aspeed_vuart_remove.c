
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct aspeed_vuart {int clk; TYPE_1__* dev; int line; int unthrottle_timer; } ;
struct TYPE_2__ {int kobj; } ;


 int aspeed_vuart_attr_group ;
 int aspeed_vuart_set_enabled (struct aspeed_vuart*,int) ;
 int clk_disable_unprepare (int ) ;
 int del_timer_sync (int *) ;
 struct aspeed_vuart* platform_get_drvdata (struct platform_device*) ;
 int serial8250_unregister_port (int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int aspeed_vuart_remove(struct platform_device *pdev)
{
 struct aspeed_vuart *vuart = platform_get_drvdata(pdev);

 del_timer_sync(&vuart->unthrottle_timer);
 aspeed_vuart_set_enabled(vuart, 0);
 serial8250_unregister_port(vuart->line);
 sysfs_remove_group(&vuart->dev->kobj, &aspeed_vuart_attr_group);
 clk_disable_unprepare(vuart->clk);

 return 0;
}
