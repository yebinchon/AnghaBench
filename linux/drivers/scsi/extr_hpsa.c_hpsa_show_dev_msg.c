
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpsa_scsi_dev_t {int devtype; size_t raid_level; int expose_device; scalar_t__ offload_to_be_enabled; scalar_t__ offload_config; int model; int vendor; int lun; int target; int bus; int scsi3addr; int external; } ;
struct ctlr_info {TYPE_2__* scsi_host; TYPE_1__* pdev; } ;
struct TYPE_4__ {int host_no; } ;
struct TYPE_3__ {int dev; } ;


 int LABEL_SIZE ;
 size_t PHYSICAL_DRIVE ;
 size_t RAID_UNKNOWN ;







 int dev_printk (char const*,int *,char*,int ,int ,int ,int ,char*,int ,int ,int ,char*,char,char,int ) ;
 int is_logical_dev_addr_mode (int ) ;
 char** raid_label ;
 int scsi_device_type (int) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void hpsa_show_dev_msg(const char *level, struct ctlr_info *h,
 struct hpsa_scsi_dev_t *dev, char *description)
{

 char label[25];

 if (h == ((void*)0) || h->pdev == ((void*)0) || h->scsi_host == ((void*)0))
  return;

 switch (dev->devtype) {
 case 131:
  snprintf(label, 25, "controller");
  break;
 case 133:
  snprintf(label, 25, "enclosure");
  break;
 case 134:
 case 128:
  if (dev->external)
   snprintf(label, 25, "external");
  else if (!is_logical_dev_addr_mode(dev->scsi3addr))
   snprintf(label, 25, "%s",
    raid_label[PHYSICAL_DRIVE]);
  else
   snprintf(label, 25, "RAID-%s",
    dev->raid_level > RAID_UNKNOWN ? "?" :
    raid_label[dev->raid_level]);
  break;
 case 130:
  snprintf(label, 25, "rom");
  break;
 case 129:
  snprintf(label, 25, "tape");
  break;
 case 132:
  snprintf(label, 25, "changer");
  break;
 default:
  snprintf(label, 25, "UNKNOWN");
  break;
 }

 dev_printk(level, &h->pdev->dev,
   "scsi %d:%d:%d:%d: %s %s %.8s %.16s %s SSDSmartPathCap%c En%c Exp=%d\n",
   h->scsi_host->host_no, dev->bus, dev->target, dev->lun,
   description,
   scsi_device_type(dev->devtype),
   dev->vendor,
   dev->model,
   label,
   dev->offload_config ? '+' : '-',
   dev->offload_to_be_enabled ? '+' : '-',
   dev->expose_device);
}
