
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ab8500_fg {int fg_psy; int fg_wq; int dev; int node; } ;


 int ab8500_fg_coulomb_counter (struct ab8500_fg*,int) ;
 int ab8500_fg_sysfs_exit (struct ab8500_fg*) ;
 int ab8500_fg_sysfs_psy_remove_attrs (struct ab8500_fg*) ;
 int destroy_workqueue (int ) ;
 int dev_err (int ,char*) ;
 int flush_scheduled_work () ;
 int list_del (int *) ;
 struct ab8500_fg* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int ab8500_fg_remove(struct platform_device *pdev)
{
 int ret = 0;
 struct ab8500_fg *di = platform_get_drvdata(pdev);

 list_del(&di->node);


 ret = ab8500_fg_coulomb_counter(di, 0);
 if (ret)
  dev_err(di->dev, "failed to disable coulomb counter\n");

 destroy_workqueue(di->fg_wq);
 ab8500_fg_sysfs_exit(di);

 flush_scheduled_work();
 ab8500_fg_sysfs_psy_remove_attrs(di);
 power_supply_unregister(di->fg_psy);
 return ret;
}
