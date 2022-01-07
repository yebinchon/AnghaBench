
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_scsi_dev {int scsi_cmds_outstanding; } ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int ENXIO ;
 int ETIMEDOUT ;
 unsigned long NO_TIMEOUT ;
 unsigned long PQI_HZ ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int *,char*) ;
 unsigned long jiffies ;
 int pqi_check_ctrl_health (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int pqi_device_wait_for_pending_io(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device, unsigned long timeout_secs)
{
 unsigned long timeout;

 timeout = (timeout_secs * PQI_HZ) + jiffies;

 while (atomic_read(&device->scsi_cmds_outstanding)) {
  pqi_check_ctrl_health(ctrl_info);
  if (pqi_ctrl_offline(ctrl_info))
   return -ENXIO;
  if (timeout_secs != NO_TIMEOUT) {
   if (time_after(jiffies, timeout)) {
    dev_err(&ctrl_info->pci_dev->dev,
     "timed out waiting for pending IO\n");
    return -ETIMEDOUT;
   }
  }
  usleep_range(1000, 2000);
 }

 return 0;
}
