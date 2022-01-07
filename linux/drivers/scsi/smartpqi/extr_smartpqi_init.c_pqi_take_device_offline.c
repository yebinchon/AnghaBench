
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int host; struct pqi_scsi_dev* hostdata; } ;
struct pqi_scsi_dev {int device_offline; int lun; int target; int bus; } ;
struct pqi_ctrl_info {TYPE_1__* scsi_host; TYPE_2__* pci_dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int host_no; } ;


 int dev_err (int *,char*,char*,int ,int ,int ,int ) ;
 int pqi_schedule_rescan_worker (struct pqi_ctrl_info*) ;
 struct pqi_ctrl_info* shost_to_hba (int ) ;

__attribute__((used)) static inline void pqi_take_device_offline(struct scsi_device *sdev, char *path)
{
 struct pqi_ctrl_info *ctrl_info;
 struct pqi_scsi_dev *device;

 device = sdev->hostdata;
 if (device->device_offline)
  return;

 device->device_offline = 1;
 ctrl_info = shost_to_hba(sdev->host);
 pqi_schedule_rescan_worker(ctrl_info);
 dev_err(&ctrl_info->pci_dev->dev, "re-scanning %s scsi %d:%d:%d:%d\n",
  path, ctrl_info->scsi_host->host_no, device->bus,
  device->target, device->lun);
}
