
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {scalar_t__ cfg_enable_fc4_type; int delayed_disc_tmo; int fc_flag; int fc_ns_retry; int port_state; } ;
struct Scsi_Host {int host_lock; } ;


 int FCH_EVT_LINKDOWN ;
 int FC_DISC_DELAYED ;
 int LPFC_DISC_TRC_ELS_CMD ;
 scalar_t__ LPFC_ENABLE_NVME ;
 int del_timer_sync (int *) ;
 int fc_get_event_number () ;
 int fc_host_post_event (struct Scsi_Host*,int ,int ,int ) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_port_link_failure (struct lpfc_vport*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_linkdown_port(struct lpfc_vport *vport)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 if (vport->cfg_enable_fc4_type != LPFC_ENABLE_NVME)
  fc_host_post_event(shost, fc_get_event_number(),
       FCH_EVT_LINKDOWN, 0);

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Link Down:       state:x%x rtry:x%x flg:x%x",
  vport->port_state, vport->fc_ns_retry, vport->fc_flag);

 lpfc_port_link_failure(vport);


 spin_lock_irq(shost->host_lock);
 vport->fc_flag &= ~FC_DISC_DELAYED;
 spin_unlock_irq(shost->host_lock);
 del_timer_sync(&vport->delayed_disc_tmo);
}
