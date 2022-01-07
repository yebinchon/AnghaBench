
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pqi_scsi_dev {int sdev; int scsi_cmds_outstanding; int lun; int target; int bus; } ;
struct pqi_ctrl_info {TYPE_2__* scsi_host; TYPE_1__* pci_dev; } ;
struct TYPE_4__ {int host_no; } ;
struct TYPE_3__ {int dev; } ;


 int PQI_PENDING_IO_TIMEOUT_SECS ;
 int atomic_read (int *) ;
 int dev_err (int *,char*,int ,int ,int ,int ,int ) ;
 int pqi_device_remove_start (struct pqi_scsi_dev*) ;
 int pqi_device_wait_for_pending_io (struct pqi_ctrl_info*,struct pqi_scsi_dev*,int ) ;
 scalar_t__ pqi_is_logical_device (struct pqi_scsi_dev*) ;
 int pqi_remove_sas_device (struct pqi_scsi_dev*) ;
 int scsi_remove_device (int ) ;

__attribute__((used)) static inline void pqi_remove_device(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device)
{
 int rc;

 pqi_device_remove_start(device);

 rc = pqi_device_wait_for_pending_io(ctrl_info, device,
  PQI_PENDING_IO_TIMEOUT_SECS);
 if (rc)
  dev_err(&ctrl_info->pci_dev->dev,
   "scsi %d:%d:%d:%d removing device with %d outstanding commands\n",
   ctrl_info->scsi_host->host_no, device->bus,
   device->target, device->lun,
   atomic_read(&device->scsi_cmds_outstanding));

 if (pqi_is_logical_device(device))
  scsi_remove_device(device->sdev);
 else
  pqi_remove_sas_device(device);
}
