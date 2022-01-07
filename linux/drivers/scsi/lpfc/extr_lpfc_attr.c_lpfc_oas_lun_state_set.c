
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {int cfg_fof; } ;


 int ENOMEM ;
 size_t EPERM ;
 int lpfc_disable_oas_lun (struct lpfc_hba*,struct lpfc_name*,struct lpfc_name*,int ,int ) ;
 int lpfc_enable_oas_lun (struct lpfc_hba*,struct lpfc_name*,struct lpfc_name*,int ,int ) ;

__attribute__((used)) static size_t
lpfc_oas_lun_state_set(struct lpfc_hba *phba, uint8_t vpt_wwpn[],
         uint8_t tgt_wwpn[], uint64_t lun,
         uint32_t oas_state, uint8_t pri)
{

 int rc = 0;

 if (!phba->cfg_fof)
  return -EPERM;

 if (oas_state) {
  if (!lpfc_enable_oas_lun(phba, (struct lpfc_name *)vpt_wwpn,
      (struct lpfc_name *)tgt_wwpn,
      lun, pri))
   rc = -ENOMEM;
 } else {
  lpfc_disable_oas_lun(phba, (struct lpfc_name *)vpt_wwpn,
         (struct lpfc_name *)tgt_wwpn, lun, pri);
 }
 return rc;

}
