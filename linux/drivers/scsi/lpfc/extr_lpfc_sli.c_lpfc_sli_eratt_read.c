
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int work_hs; int work_ha; int hba_flag; int HCregaddr; int HAregaddr; } ;


 int DEFER_ERATT ;
 int HA_ERATT ;
 int HBA_ERATT_HANDLED ;
 int HS_FFER1 ;
 int HS_FFER2 ;
 int HS_FFER3 ;
 int HS_FFER4 ;
 int HS_FFER5 ;
 int HS_FFER6 ;
 int HS_FFER7 ;
 int HS_FFER8 ;
 int UNPLUG_ERR ;
 scalar_t__ lpfc_readl (int ,int*) ;
 scalar_t__ lpfc_sli_read_hs (struct lpfc_hba*) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static int
lpfc_sli_eratt_read(struct lpfc_hba *phba)
{
 uint32_t ha_copy;


 if (lpfc_readl(phba->HAregaddr, &ha_copy))
  goto unplug_err;

 if (ha_copy & HA_ERATT) {

  if (lpfc_sli_read_hs(phba))
   goto unplug_err;


  if ((HS_FFER1 & phba->work_hs) &&
      ((HS_FFER2 | HS_FFER3 | HS_FFER4 | HS_FFER5 |
        HS_FFER6 | HS_FFER7 | HS_FFER8) & phba->work_hs)) {
   phba->hba_flag |= DEFER_ERATT;

   writel(0, phba->HCregaddr);
   readl(phba->HCregaddr);
  }


  phba->work_ha |= HA_ERATT;

  phba->hba_flag |= HBA_ERATT_HANDLED;
  return 1;
 }
 return 0;

unplug_err:

 phba->work_hs |= UNPLUG_ERR;

 phba->work_ha |= HA_ERATT;

 phba->hba_flag |= HBA_ERATT_HANDLED;
 return 1;
}
