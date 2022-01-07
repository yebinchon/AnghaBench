
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_dbg (struct device*,char*) ;
 scalar_t__ scsi_is_sdev_device (struct device*) ;
 int sdev_runtime_suspend (struct device*) ;

__attribute__((used)) static int scsi_runtime_suspend(struct device *dev)
{
 int err = 0;

 dev_dbg(dev, "scsi_runtime_suspend\n");
 if (scsi_is_sdev_device(dev))
  err = sdev_runtime_suspend(dev);



 return err;
}
