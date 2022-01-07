
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {scalar_t__ work_port_events; int load_flag; } ;
struct lpfc_hba {struct lpfc_vport* pport; int vpi_ids; int vpi_bmask; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_UNLOADING ;
 int kfree (int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 int lpfc_sli_disable_intr (struct lpfc_hba*) ;
 int lpfc_sli_hba_down (struct lpfc_hba*) ;
 int lpfc_stop_hba_timers (struct lpfc_hba*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
lpfc_unset_hba(struct lpfc_hba *phba)
{
 struct lpfc_vport *vport = phba->pport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 spin_lock_irq(shost->host_lock);
 vport->load_flag |= FC_UNLOADING;
 spin_unlock_irq(shost->host_lock);

 kfree(phba->vpi_bmask);
 kfree(phba->vpi_ids);

 lpfc_stop_hba_timers(phba);

 phba->pport->work_port_events = 0;

 lpfc_sli_hba_down(phba);

 lpfc_sli_brdrestart(phba);

 lpfc_sli_disable_intr(phba);

 return;
}
