
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int lun; int target; int bus; } ;
struct pqi_ctrl_info {int sas_host; int scsi_host; } ;


 int pqi_add_sas_device (int ,struct pqi_scsi_dev*) ;
 scalar_t__ pqi_is_logical_device (struct pqi_scsi_dev*) ;
 int scsi_add_device (int ,int ,int ,int ) ;

__attribute__((used)) static int pqi_add_device(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device)
{
 int rc;

 if (pqi_is_logical_device(device))
  rc = scsi_add_device(ctrl_info->scsi_host, device->bus,
   device->target, device->lun);
 else
  rc = pqi_add_sas_device(ctrl_info->sas_host, device);

 return rc;
}
