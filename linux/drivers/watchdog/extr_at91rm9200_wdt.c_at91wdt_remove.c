
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {int * parent; } ;


 int at91rm9200_restart_nb ;
 TYPE_1__ at91wdt_miscdev ;
 int dev_warn (struct device*,char*) ;
 int misc_deregister (TYPE_1__*) ;
 int unregister_restart_handler (int *) ;

__attribute__((used)) static int at91wdt_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int res;

 res = unregister_restart_handler(&at91rm9200_restart_nb);
 if (res)
  dev_warn(dev, "failed to unregister restart handler\n");

 misc_deregister(&at91wdt_miscdev);
 at91wdt_miscdev.parent = ((void*)0);

 return res;
}
