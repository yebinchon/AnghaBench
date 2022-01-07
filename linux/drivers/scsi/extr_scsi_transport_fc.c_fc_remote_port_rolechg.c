
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fc_rport {int scsi_target_id; int roles; int flags; int scan_work; int dev; int dev_loss_work; int fail_io_work; } ;
struct fc_host_attrs {int next_target_id; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_PORT_ROLE_FCP_TARGET ;
 int FC_RPORT_DEVLOSS_CALLBK_DONE ;
 int FC_RPORT_DEVLOSS_PENDING ;
 int FC_RPORT_FAST_FAIL_TIMEDOUT ;
 int FC_RPORT_SCAN_PENDING ;
 int SDEV_RUNNING ;
 int cancel_delayed_work (int *) ;
 int fc_flush_devloss (struct Scsi_Host*) ;
 int fc_flush_work (struct Scsi_Host*) ;
 struct Scsi_Host* rport_to_shost (struct fc_rport*) ;
 int scsi_queue_work (struct Scsi_Host*,int *) ;
 int scsi_target_unblock (int *,int ) ;
 struct fc_host_attrs* shost_to_fc_host (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void
fc_remote_port_rolechg(struct fc_rport *rport, u32 roles)
{
 struct Scsi_Host *shost = rport_to_shost(rport);
 struct fc_host_attrs *fc_host = shost_to_fc_host(shost);
 unsigned long flags;
 int create = 0;

 spin_lock_irqsave(shost->host_lock, flags);
 if (roles & FC_PORT_ROLE_FCP_TARGET) {
  if (rport->scsi_target_id == -1) {
   rport->scsi_target_id = fc_host->next_target_id++;
   create = 1;
  } else if (!(rport->roles & FC_PORT_ROLE_FCP_TARGET))
   create = 1;
 }

 rport->roles = roles;

 spin_unlock_irqrestore(shost->host_lock, flags);

 if (create) {
  if (!cancel_delayed_work(&rport->fail_io_work))
   fc_flush_devloss(shost);
  if (!cancel_delayed_work(&rport->dev_loss_work))
   fc_flush_devloss(shost);

  spin_lock_irqsave(shost->host_lock, flags);
  rport->flags &= ~(FC_RPORT_FAST_FAIL_TIMEDOUT |
      FC_RPORT_DEVLOSS_PENDING |
      FC_RPORT_DEVLOSS_CALLBK_DONE);
  spin_unlock_irqrestore(shost->host_lock, flags);


  fc_flush_work(shost);

  scsi_target_unblock(&rport->dev, SDEV_RUNNING);

  spin_lock_irqsave(shost->host_lock, flags);
  rport->flags |= FC_RPORT_SCAN_PENDING;
  scsi_queue_work(shost, &rport->scan_work);
  spin_unlock_irqrestore(shost->host_lock, flags);
 }
}
