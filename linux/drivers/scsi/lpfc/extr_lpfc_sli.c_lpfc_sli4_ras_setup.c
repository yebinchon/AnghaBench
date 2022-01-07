
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int cfg_ras_fwlog_level; } ;


 int LPFC_RAS_ENABLE_LOGGING ;
 scalar_t__ lpfc_check_fwlog_support (struct lpfc_hba*) ;
 int lpfc_sli4_ras_fwlog_init (struct lpfc_hba*,int ,int ) ;

void
lpfc_sli4_ras_setup(struct lpfc_hba *phba)
{

 if (lpfc_check_fwlog_support(phba))
  return;

 lpfc_sli4_ras_fwlog_init(phba, phba->cfg_ras_fwlog_level,
     LPFC_RAS_ENABLE_LOGGING);
}
