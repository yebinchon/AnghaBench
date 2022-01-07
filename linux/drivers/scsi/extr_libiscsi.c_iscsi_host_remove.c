
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_host {scalar_t__ num_sessions; scalar_t__ workq; int session_removal_wq; int lock; int state; } ;
struct Scsi_Host {int dummy; } ;


 int ISCSI_HOST_REMOVED ;
 int current ;
 int destroy_workqueue (scalar_t__) ;
 int flush_signals (int ) ;
 int iscsi_host_for_each_session (struct Scsi_Host*,int ) ;
 int iscsi_notify_host_removed ;
 int scsi_remove_host (struct Scsi_Host*) ;
 struct iscsi_host* shost_priv (struct Scsi_Host*) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_interruptible (int ,int) ;

void iscsi_host_remove(struct Scsi_Host *shost)
{
 struct iscsi_host *ihost = shost_priv(shost);
 unsigned long flags;

 spin_lock_irqsave(&ihost->lock, flags);
 ihost->state = ISCSI_HOST_REMOVED;
 spin_unlock_irqrestore(&ihost->lock, flags);

 iscsi_host_for_each_session(shost, iscsi_notify_host_removed);
 wait_event_interruptible(ihost->session_removal_wq,
     ihost->num_sessions == 0);
 if (signal_pending(current))
  flush_signals(current);

 scsi_remove_host(shost);
 if (ihost->workq)
  destroy_workqueue(ihost->workq);
}
