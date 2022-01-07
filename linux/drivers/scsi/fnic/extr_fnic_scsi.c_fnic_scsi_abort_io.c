
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctl_src_addr; } ;
struct fnic {scalar_t__ state; int fnic_lock; TYPE_2__* lport; int * remove_wait; TYPE_1__ ctlr; } ;
struct fc_lport {int dummy; } ;
typedef enum fnic_state { ____Placeholder_fnic_state } fnic_state ;
struct TYPE_4__ {int host; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 scalar_t__ FNIC_IN_ETH_MODE ;
 scalar_t__ FNIC_IN_FC_TRANS_ETH_MODE ;
 int FNIC_RMDEVICE_TIMEOUT ;
 int FNIC_SCSI_DBG (int ,int ,char*,char*) ;
 int KERN_DEBUG ;
 int fnic_fw_reset_handler (struct fnic*) ;
 int fnic_update_mac_locked (struct fnic*,int ) ;
 struct fnic* lport_priv (struct fc_lport*) ;
 int msecs_to_jiffies (int) ;
 int remove_wait ;
 int schedule_timeout (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wait_for_completion_timeout (int *,int ) ;

void fnic_scsi_abort_io(struct fc_lport *lp)
{
 int err = 0;
 unsigned long flags;
 enum fnic_state old_state;
 struct fnic *fnic = lport_priv(lp);
 DECLARE_COMPLETION_ONSTACK(remove_wait);


retry_fw_reset:
 spin_lock_irqsave(&fnic->fnic_lock, flags);
 if (unlikely(fnic->state == FNIC_IN_FC_TRANS_ETH_MODE)) {

  spin_unlock_irqrestore(&fnic->fnic_lock, flags);
  schedule_timeout(msecs_to_jiffies(100));
  goto retry_fw_reset;
 }

 fnic->remove_wait = &remove_wait;
 old_state = fnic->state;
 fnic->state = FNIC_IN_FC_TRANS_ETH_MODE;
 fnic_update_mac_locked(fnic, fnic->ctlr.ctl_src_addr);
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);

 err = fnic_fw_reset_handler(fnic);
 if (err) {
  spin_lock_irqsave(&fnic->fnic_lock, flags);
  if (fnic->state == FNIC_IN_FC_TRANS_ETH_MODE)
   fnic->state = old_state;
  fnic->remove_wait = ((void*)0);
  spin_unlock_irqrestore(&fnic->fnic_lock, flags);
  return;
 }


 wait_for_completion_timeout(&remove_wait,
        msecs_to_jiffies(FNIC_RMDEVICE_TIMEOUT));

 spin_lock_irqsave(&fnic->fnic_lock, flags);
 fnic->remove_wait = ((void*)0);
 FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
        "fnic_scsi_abort_io %s\n",
        (fnic->state == FNIC_IN_ETH_MODE) ?
        "SUCCESS" : "FAILED");
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);

}
