
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct lpfc_hba {int dummy; } ;
typedef int ssize_t ;


 int lpfc_oas_lun_state_set (struct lpfc_hba*,int *,int *,int ,int ,int ) ;

__attribute__((used)) static ssize_t
lpfc_oas_lun_state_change(struct lpfc_hba *phba, uint8_t vpt_wwpn[],
     uint8_t tgt_wwpn[], uint64_t lun,
     uint32_t oas_state, uint8_t pri)
{

 int rc;

 rc = lpfc_oas_lun_state_set(phba, vpt_wwpn, tgt_wwpn, lun,
        oas_state, pri);
 return rc;
}
