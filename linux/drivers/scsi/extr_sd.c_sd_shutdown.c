
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {TYPE_1__* device; scalar_t__ media_present; scalar_t__ WCE; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ manage_start_stop; } ;


 int KERN_NOTICE ;
 scalar_t__ SYSTEM_RESTART ;
 struct scsi_disk* dev_get_drvdata (struct device*) ;
 scalar_t__ pm_runtime_suspended (struct device*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;
 int sd_start_stop_device (struct scsi_disk*,int ) ;
 int sd_sync_cache (struct scsi_disk*,int *) ;
 scalar_t__ system_state ;

__attribute__((used)) static void sd_shutdown(struct device *dev)
{
 struct scsi_disk *sdkp = dev_get_drvdata(dev);

 if (!sdkp)
  return;

 if (pm_runtime_suspended(dev))
  return;

 if (sdkp->WCE && sdkp->media_present) {
  sd_printk(KERN_NOTICE, sdkp, "Synchronizing SCSI cache\n");
  sd_sync_cache(sdkp, ((void*)0));
 }

 if (system_state != SYSTEM_RESTART && sdkp->device->manage_start_stop) {
  sd_printk(KERN_NOTICE, sdkp, "Stopping disk\n");
  sd_start_stop_device(sdkp, 0);
 }
}
