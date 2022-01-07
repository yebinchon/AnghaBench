
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EBUSY ;
 int dev_dbg (struct device*,char*) ;
 int pm_runtime_autosuspend (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 scalar_t__ scsi_is_sdev_device (struct device*) ;

__attribute__((used)) static int scsi_runtime_idle(struct device *dev)
{
 dev_dbg(dev, "scsi_runtime_idle\n");



 if (scsi_is_sdev_device(dev)) {
  pm_runtime_mark_last_busy(dev);
  pm_runtime_autosuspend(dev);
  return -EBUSY;
 }

 return 0;
}
