
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {int opal_dev; TYPE_1__* device; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int manage_start_stop; } ;


 int KERN_NOTICE ;
 struct scsi_disk* dev_get_drvdata (struct device*) ;
 int opal_unlock_from_suspend (int ) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;
 int sd_start_stop_device (struct scsi_disk*,int) ;

__attribute__((used)) static int sd_resume(struct device *dev)
{
 struct scsi_disk *sdkp = dev_get_drvdata(dev);
 int ret;

 if (!sdkp)
  return 0;

 if (!sdkp->device->manage_start_stop)
  return 0;

 sd_printk(KERN_NOTICE, sdkp, "Starting disk\n");
 ret = sd_start_stop_device(sdkp, 1);
 if (!ret)
  opal_unlock_from_suspend(sdkp->opal_dev);
 return ret;
}
