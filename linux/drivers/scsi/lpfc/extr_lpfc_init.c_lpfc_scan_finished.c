
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {int load_flag; scalar_t__ port_state; scalar_t__ fc_map_cnt; scalar_t__ fc_prli_sent; scalar_t__ num_disc_nodes; struct lpfc_hba* phba; } ;
struct TYPE_2__ {int sli_flag; } ;
struct lpfc_hba {scalar_t__ link_state; TYPE_1__ sli; } ;
struct Scsi_Host {int host_lock; scalar_t__ hostdata; } ;


 int FC_UNLOADING ;
 int KERN_INFO ;
 int LOG_INIT ;
 scalar_t__ LPFC_LINK_DOWN ;
 int LPFC_SLI_MBOX_ACTIVE ;
 scalar_t__ LPFC_VPORT_READY ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 unsigned long msecs_to_jiffies (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int lpfc_scan_finished(struct Scsi_Host *shost, unsigned long time)
{
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 int stat = 0;

 spin_lock_irq(shost->host_lock);

 if (vport->load_flag & FC_UNLOADING) {
  stat = 1;
  goto finished;
 }
 if (time >= msecs_to_jiffies(30 * 1000)) {
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "0461 Scanning longer than 30 "
    "seconds.  Continuing initialization\n");
  stat = 1;
  goto finished;
 }
 if (time >= msecs_to_jiffies(15 * 1000) &&
     phba->link_state <= LPFC_LINK_DOWN) {
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "0465 Link down longer than 15 "
    "seconds.  Continuing initialization\n");
  stat = 1;
  goto finished;
 }

 if (vport->port_state != LPFC_VPORT_READY)
  goto finished;
 if (vport->num_disc_nodes || vport->fc_prli_sent)
  goto finished;
 if (vport->fc_map_cnt == 0 && time < msecs_to_jiffies(2 * 1000))
  goto finished;
 if ((phba->sli.sli_flag & LPFC_SLI_MBOX_ACTIVE) != 0)
  goto finished;

 stat = 1;

finished:
 spin_unlock_irq(shost->host_lock);
 return stat;
}
