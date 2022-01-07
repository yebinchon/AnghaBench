
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct scsi_device {struct hpsa_scsi_dev_t* hostdata; } ;
struct hpsa_scsi_dev_t {int bay; int active_path_index; int path_map; scalar_t__ devtype; int* box; scalar_t__ expose_device; int * phys_connector; int lun; int target; int bus; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int devlock; TYPE_1__* scsi_host; } ;
typedef int ssize_t ;
typedef int phys_connector ;
struct TYPE_2__ {int host_no; } ;


 int ENODEV ;
 int MAX_PATHS ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ TYPE_DISK ;
 scalar_t__ TYPE_RAID ;
 scalar_t__ TYPE_ZBC ;
 scalar_t__ is_logical_device (struct hpsa_scsi_dev_t*) ;
 int memcpy (unsigned char**,int *,int) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,...) ;
 int scsi_device_type (scalar_t__) ;
 struct ctlr_info* sdev_to_hba (struct scsi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t path_info_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct ctlr_info *h;
 struct scsi_device *sdev;
 struct hpsa_scsi_dev_t *hdev;
 unsigned long flags;
 int i;
 int output_len = 0;
 u8 box;
 u8 bay;
 u8 path_map_index = 0;
 char *active;
 unsigned char phys_connector[2];

 sdev = to_scsi_device(dev);
 h = sdev_to_hba(sdev);
 spin_lock_irqsave(&h->devlock, flags);
 hdev = sdev->hostdata;
 if (!hdev) {
  spin_unlock_irqrestore(&h->devlock, flags);
  return -ENODEV;
 }

 bay = hdev->bay;
 for (i = 0; i < MAX_PATHS; i++) {
  path_map_index = 1<<i;
  if (i == hdev->active_path_index)
   active = "Active";
  else if (hdev->path_map & path_map_index)
   active = "Inactive";
  else
   continue;

  output_len += scnprintf(buf + output_len,
    PAGE_SIZE - output_len,
    "[%d:%d:%d:%d] %20.20s ",
    h->scsi_host->host_no,
    hdev->bus, hdev->target, hdev->lun,
    scsi_device_type(hdev->devtype));

  if (hdev->devtype == TYPE_RAID || is_logical_device(hdev)) {
   output_len += scnprintf(buf + output_len,
      PAGE_SIZE - output_len,
      "%s\n", active);
   continue;
  }

  box = hdev->box[i];
  memcpy(&phys_connector, &hdev->phys_connector[i],
   sizeof(phys_connector));
  if (phys_connector[0] < '0')
   phys_connector[0] = '0';
  if (phys_connector[1] < '0')
   phys_connector[1] = '0';
  output_len += scnprintf(buf + output_len,
    PAGE_SIZE - output_len,
    "PORT: %.2s ",
    phys_connector);
  if ((hdev->devtype == TYPE_DISK || hdev->devtype == TYPE_ZBC) &&
   hdev->expose_device) {
   if (box == 0 || box == 0xFF) {
    output_len += scnprintf(buf + output_len,
     PAGE_SIZE - output_len,
     "BAY: %hhu %s\n",
     bay, active);
   } else {
    output_len += scnprintf(buf + output_len,
     PAGE_SIZE - output_len,
     "BOX: %hhu BAY: %hhu %s\n",
     box, bay, active);
   }
  } else if (box != 0 && box != 0xFF) {
   output_len += scnprintf(buf + output_len,
    PAGE_SIZE - output_len, "BOX: %hhu %s\n",
    box, active);
  } else
   output_len += scnprintf(buf + output_len,
    PAGE_SIZE - output_len, "%s\n", active);
 }

 spin_unlock_irqrestore(&h->devlock, flags);
 return output_len;
}
