
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int cfg_oas_flags; int cfg_oas_priority; int cfg_oas_lun_status; int cfg_oas_tgt_wwpn; int cfg_oas_vpt_wwpn; int cfg_fof; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EFAULT ;
 int EPERM ;
 scalar_t__ NOT_OAS_ENABLED_LUN ;
 int OAS_FIND_ANY_TARGET ;
 int OAS_FIND_ANY_VPORT ;
 int OAS_LUN_VALID ;
 scalar_t__ PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 scalar_t__ lpfc_oas_lun_get_next (struct lpfc_hba*,int ,int ,int *,int *) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,scalar_t__) ;
 scalar_t__ wwn_to_u64 (int ) ;

__attribute__((used)) static ssize_t
lpfc_oas_lun_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;

 uint64_t oas_lun;
 int len = 0;

 if (!phba->cfg_fof)
  return -EPERM;

 if (wwn_to_u64(phba->cfg_oas_vpt_wwpn) == 0)
  if (!(phba->cfg_oas_flags & OAS_FIND_ANY_VPORT))
   return -EFAULT;

 if (wwn_to_u64(phba->cfg_oas_tgt_wwpn) == 0)
  if (!(phba->cfg_oas_flags & OAS_FIND_ANY_TARGET))
   return -EFAULT;

 oas_lun = lpfc_oas_lun_get_next(phba, phba->cfg_oas_vpt_wwpn,
     phba->cfg_oas_tgt_wwpn,
     &phba->cfg_oas_lun_status,
     &phba->cfg_oas_priority);
 if (oas_lun != NOT_OAS_ENABLED_LUN)
  phba->cfg_oas_flags |= OAS_LUN_VALID;

 len += scnprintf(buf + len, PAGE_SIZE-len, "0x%llx", oas_lun);

 return len;
}
