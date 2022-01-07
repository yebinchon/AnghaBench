
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_2__ {int oas_next_lun; int oas_next_tgt_wwpn; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; int cfg_oas_flags; int cfg_oas_tgt_wwpn; int cfg_fof; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EPERM ;
 int FIND_FIRST_OAS_LUN ;
 int OAS_FIND_ANY_TARGET ;
 int OAS_LUN_VALID ;
 int WWN_SZ ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int lpfc_wwn_set (char const*,unsigned int,int *) ;
 int memcpy (int ,int *,int) ;
 scalar_t__ wwn_to_u64 (int *) ;

__attribute__((used)) static ssize_t
lpfc_oas_tgt_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;
 unsigned int cnt = count;
 uint8_t wwpn[WWN_SZ];
 int rc;

 if (!phba->cfg_fof)
  return -EPERM;


 if (buf[cnt-1] == '\n')
  cnt--;

 rc = lpfc_wwn_set(buf, cnt, wwpn);
 if (rc)
  return rc;

 memcpy(phba->cfg_oas_tgt_wwpn, wwpn, (8 * sizeof(uint8_t)));
 memcpy(phba->sli4_hba.oas_next_tgt_wwpn, wwpn, (8 * sizeof(uint8_t)));
 if (wwn_to_u64(wwpn) == 0)
  phba->cfg_oas_flags |= OAS_FIND_ANY_TARGET;
 else
  phba->cfg_oas_flags &= ~OAS_FIND_ANY_TARGET;
 phba->cfg_oas_flags &= ~OAS_LUN_VALID;
 phba->sli4_hba.oas_next_lun = FIND_FIRST_OAS_LUN;
 return count;
}
