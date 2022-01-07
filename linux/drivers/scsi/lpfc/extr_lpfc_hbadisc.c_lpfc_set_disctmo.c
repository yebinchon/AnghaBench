
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int fc_adisc_cnt; int fc_plogi_cnt; int fc_disctmo; int port_state; int fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_hba {int fc_edtov; int fc_ratov; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_DISC_TMO ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_LOCAL_CFG_LINK ;
 scalar_t__ jiffies ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int,int ,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int,unsigned long,int ,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int timer_pending (int *) ;

void
lpfc_set_disctmo(struct lpfc_vport *vport)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 uint32_t tmo;

 if (vport->port_state == LPFC_LOCAL_CFG_LINK) {

  tmo = (((phba->fc_edtov + 999) / 1000) + 1);
 } else {



  tmo = ((phba->fc_ratov * 3) + 3);
 }


 if (!timer_pending(&vport->fc_disctmo)) {
  lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
   "set disc timer:  tmo:x%x state:x%x flg:x%x",
   tmo, vport->port_state, vport->fc_flag);
 }

 mod_timer(&vport->fc_disctmo, jiffies + msecs_to_jiffies(1000 * tmo));
 spin_lock_irq(shost->host_lock);
 vport->fc_flag |= FC_DISC_TMO;
 spin_unlock_irq(shost->host_lock);


 lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
    "0247 Start Discovery Timer state x%x "
    "Data: x%x x%lx x%x x%x\n",
    vport->port_state, tmo,
    (unsigned long)&vport->fc_disctmo, vport->fc_plogi_cnt,
    vport->fc_adisc_cnt);

 return;
}
