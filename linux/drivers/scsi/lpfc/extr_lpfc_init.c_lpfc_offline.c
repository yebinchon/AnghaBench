
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {int fc_flag; scalar_t__ work_port_events; } ;
struct lpfc_hba {int max_vports; scalar_t__ cfg_xri_rebalancing; int hbalock; scalar_t__ work_ha; TYPE_1__* pport; } ;
struct Scsi_Host {int * host_lock; } ;
struct TYPE_2__ {int fc_flag; } ;


 int FC_OFFLINE_MODE ;
 int KERN_WARNING ;
 int LOG_INIT ;
 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_destroy_multixri_pools (struct lpfc_hba*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 int lpfc_nvme_destroy_localport (TYPE_1__*) ;
 int lpfc_nvmet_destroy_targetport (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli_hba_down (struct lpfc_hba*) ;
 int lpfc_stop_port (struct lpfc_hba*) ;
 int lpfc_stop_vport_timers (struct lpfc_vport*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_offline(struct lpfc_hba *phba)
{
 struct Scsi_Host *shost;
 struct lpfc_vport **vports;
 int i;

 if (phba->pport->fc_flag & FC_OFFLINE_MODE)
  return;


 lpfc_stop_port(phba);




 lpfc_nvmet_destroy_targetport(phba);
 lpfc_nvme_destroy_localport(phba->pport);

 vports = lpfc_create_vport_work_array(phba);
 if (vports != ((void*)0))
  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++)
   lpfc_stop_vport_timers(vports[i]);
 lpfc_destroy_vport_work_array(phba, vports);
 lpfc_printf_log(phba, KERN_WARNING, LOG_INIT,
   "0460 Bring Adapter offline\n");


 lpfc_sli_hba_down(phba);
 spin_lock_irq(&phba->hbalock);
 phba->work_ha = 0;
 spin_unlock_irq(&phba->hbalock);
 vports = lpfc_create_vport_work_array(phba);
 if (vports != ((void*)0))
  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++) {
   shost = lpfc_shost_from_vport(vports[i]);
   spin_lock_irq(shost->host_lock);
   vports[i]->work_port_events = 0;
   vports[i]->fc_flag |= FC_OFFLINE_MODE;
   spin_unlock_irq(shost->host_lock);
  }
 lpfc_destroy_vport_work_array(phba, vports);

 if (phba->cfg_xri_rebalancing)
  lpfc_destroy_multixri_pools(phba);
}
