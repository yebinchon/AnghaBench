
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int request_queue; } ;
struct device {TYPE_1__* driver; } ;
struct dev_pm_ops {int (* runtime_resume ) (struct device*) ;} ;
struct TYPE_2__ {struct dev_pm_ops* pm; } ;


 int blk_post_runtime_resume (int ,int) ;
 int blk_pre_runtime_resume (int ) ;
 int stub1 (struct device*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int sdev_runtime_resume(struct device *dev)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 const struct dev_pm_ops *pm = dev->driver ? dev->driver->pm : ((void*)0);
 int err = 0;

 blk_pre_runtime_resume(sdev->request_queue);
 if (pm && pm->runtime_resume)
  err = pm->runtime_resume(dev);
 blk_post_runtime_resume(sdev->request_queue, err);

 return err;
}
