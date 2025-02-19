
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint64_t ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {int devicelock; int luns; int cfg_fof; } ;
struct lpfc_device_data {int oas_enabled; int available; int listentry; void* priority; } ;


 struct lpfc_device_data* __lpfc_get_device_data (struct lpfc_hba*,int *,struct lpfc_name*,struct lpfc_name*,int ) ;
 int list_add_tail (int *,int *) ;
 struct lpfc_device_data* lpfc_create_device_data (struct lpfc_hba*,struct lpfc_name*,struct lpfc_name*,int ,void*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

bool
lpfc_enable_oas_lun(struct lpfc_hba *phba, struct lpfc_name *vport_wwpn,
      struct lpfc_name *target_wwpn, uint64_t lun, uint8_t pri)
{

 struct lpfc_device_data *lun_info;
 unsigned long flags;

 if (unlikely(!phba) || !vport_wwpn || !target_wwpn ||
     !phba->cfg_fof)
  return 0;

 spin_lock_irqsave(&phba->devicelock, flags);


 lun_info = __lpfc_get_device_data(phba, &phba->luns, vport_wwpn,
       target_wwpn, lun);
 if (lun_info) {
  if (!lun_info->oas_enabled)
   lun_info->oas_enabled = 1;
  lun_info->priority = pri;
  spin_unlock_irqrestore(&phba->devicelock, flags);
  return 1;
 }


 lun_info = lpfc_create_device_data(phba, vport_wwpn, target_wwpn, lun,
        pri, 1);
 if (lun_info) {
  lun_info->oas_enabled = 1;
  lun_info->priority = pri;
  lun_info->available = 0;
  list_add_tail(&lun_info->listentry, &phba->luns);
  spin_unlock_irqrestore(&phba->devicelock, flags);
  return 1;
 }
 spin_unlock_irqrestore(&phba->devicelock, flags);
 return 0;
}
