
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sli_flag; } ;
struct lpfc_hba {TYPE_1__ sli; int link_state; int cfg_enable_hba_reset; } ;


 int LPFC_HBA_ERROR ;
 int LPFC_MBX_NO_WAIT ;
 int LPFC_MBX_WAIT ;
 int LPFC_SLI_ACTIVE ;
 int lpfc_offline (struct lpfc_hba*) ;
 int lpfc_offline_prep (struct lpfc_hba*,int ) ;
 int lpfc_online (struct lpfc_hba*) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 int lpfc_unblock_mgmt_io (struct lpfc_hba*) ;

void
lpfc_reset_hba(struct lpfc_hba *phba)
{

 if (!phba->cfg_enable_hba_reset) {
  phba->link_state = LPFC_HBA_ERROR;
  return;
 }
 if (phba->sli.sli_flag & LPFC_SLI_ACTIVE)
  lpfc_offline_prep(phba, LPFC_MBX_WAIT);
 else
  lpfc_offline_prep(phba, LPFC_MBX_NO_WAIT);
 lpfc_offline(phba);
 lpfc_sli_brdrestart(phba);
 lpfc_online(phba);
 lpfc_unblock_mgmt_io(phba);
}
