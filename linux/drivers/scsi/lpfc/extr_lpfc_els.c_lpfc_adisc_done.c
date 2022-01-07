
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_flag; scalar_t__ port_state; scalar_t__ num_disc_nodes; scalar_t__ fc_npr_cnt; struct lpfc_hba* phba; } ;
struct lpfc_hba {int sli3_options; scalar_t__ sli_rev; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_ABORT_DISCOVERY ;
 int FC_NDISC_ACTIVE ;
 int FC_RSCN_MODE ;
 int LPFC_SLI3_NPIV_ENABLED ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ LPFC_VPORT_READY ;
 int lpfc_can_disctmo (struct lpfc_vport*) ;
 int lpfc_els_disc_plogi (struct lpfc_vport*) ;
 int lpfc_end_rscn (struct lpfc_vport*) ;
 int lpfc_issue_clear_la (struct lpfc_hba*,struct lpfc_vport*) ;
 int lpfc_issue_reg_vpi (struct lpfc_hba*,struct lpfc_vport*) ;
 int lpfc_rscn_disc (struct lpfc_vport*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
lpfc_adisc_done(struct lpfc_vport *vport)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;





 if ((phba->sli3_options & LPFC_SLI3_NPIV_ENABLED) &&
     !(vport->fc_flag & FC_RSCN_MODE) &&
     (phba->sli_rev < LPFC_SLI_REV4)) {
  lpfc_issue_clear_la(phba, vport);
  lpfc_issue_reg_vpi(phba, vport);
  return;
 }




 if (vport->port_state < LPFC_VPORT_READY) {

  lpfc_issue_clear_la(phba, vport);
  if (!(vport->fc_flag & FC_ABORT_DISCOVERY)) {
   vport->num_disc_nodes = 0;

   if (vport->fc_npr_cnt)
    lpfc_els_disc_plogi(vport);
   if (!vport->num_disc_nodes) {
    spin_lock_irq(shost->host_lock);
    vport->fc_flag &= ~FC_NDISC_ACTIVE;
    spin_unlock_irq(shost->host_lock);
    lpfc_can_disctmo(vport);
    lpfc_end_rscn(vport);
   }
  }
  vport->port_state = LPFC_VPORT_READY;
 } else
  lpfc_rscn_disc(vport);
}
