
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int request_queue; } ;
struct device {TYPE_1__* driver; } ;
struct dev_pm_ops {int (* runtime_suspend ) (struct device*) ;} ;
struct TYPE_2__ {struct dev_pm_ops* pm; } ;


 int blk_post_runtime_suspend (int ,int) ;
 int blk_pre_runtime_suspend (int ) ;
 int stub1 (struct device*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int sdev_runtime_suspend(struct device *dev)
{
 const struct dev_pm_ops *pm = dev->driver ? dev->driver->pm : ((void*)0);
 struct scsi_device *sdev = to_scsi_device(dev);
 int err = 0;

 err = blk_pre_runtime_suspend(sdev->request_queue);
 if (err)
  return err;
 if (pm && pm->runtime_suspend)
  err = pm->runtime_suspend(dev);
 blk_post_runtime_suspend(sdev->request_queue, err);

 return err;
}
