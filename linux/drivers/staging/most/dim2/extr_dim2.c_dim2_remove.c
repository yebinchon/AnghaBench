
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dim2_hdm {int (* disable_platform ) (struct platform_device*) ;int netinfo_task; int most_iface; int dev; } ;


 int dim2_sysfs_destroy (int *) ;
 int dim_lock ;
 int dim_shutdown () ;
 int kthread_stop (int ) ;
 int most_deregister_interface (int *) ;
 struct dim2_hdm* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct platform_device*) ;

__attribute__((used)) static int dim2_remove(struct platform_device *pdev)
{
 struct dim2_hdm *dev = platform_get_drvdata(pdev);
 unsigned long flags;

 dim2_sysfs_destroy(&dev->dev);
 most_deregister_interface(&dev->most_iface);
 kthread_stop(dev->netinfo_task);

 spin_lock_irqsave(&dim_lock, flags);
 dim_shutdown();
 spin_unlock_irqrestore(&dim_lock, flags);

 if (dev->disable_platform)
  dev->disable_platform(pdev);

 return 0;
}
