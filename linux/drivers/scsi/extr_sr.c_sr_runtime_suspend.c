
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cd {scalar_t__ media_present; } ;
struct device {int dummy; } ;


 int EBUSY ;
 struct scsi_cd* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int sr_runtime_suspend(struct device *dev)
{
 struct scsi_cd *cd = dev_get_drvdata(dev);

 if (!cd)
  return 0;

 if (cd->media_present)
  return -EBUSY;
 else
  return 0;
}
