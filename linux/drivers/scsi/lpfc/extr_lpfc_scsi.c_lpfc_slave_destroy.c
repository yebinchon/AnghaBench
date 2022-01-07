
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {struct lpfc_device_data* hostdata; TYPE_1__* host; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int devicelock; scalar_t__ cfg_fof; int sdev_cnt; } ;
struct lpfc_device_data {int available; int oas_enabled; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 int atomic_dec (int *) ;
 int lpfc_delete_device_data (struct lpfc_hba*,struct lpfc_device_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_slave_destroy(struct scsi_device *sdev)
{
 struct lpfc_vport *vport = (struct lpfc_vport *) sdev->host->hostdata;
 struct lpfc_hba *phba = vport->phba;
 unsigned long flags;
 struct lpfc_device_data *device_data = sdev->hostdata;

 atomic_dec(&phba->sdev_cnt);
 if ((phba->cfg_fof) && (device_data)) {
  spin_lock_irqsave(&phba->devicelock, flags);
  device_data->available = 0;
  if (!device_data->oas_enabled)
   lpfc_delete_device_data(phba, device_data);
  spin_unlock_irqrestore(&phba->devicelock, flags);
 }
 sdev->hostdata = ((void*)0);
 return;
}
