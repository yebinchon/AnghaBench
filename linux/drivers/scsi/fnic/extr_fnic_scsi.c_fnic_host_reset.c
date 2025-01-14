
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct fnic {int internal_reset_inprogress; int fnic_lock; TYPE_2__* lport; } ;
struct fc_lport {scalar_t__ state; scalar_t__ link_up; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int host; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;


 int FAILED ;
 unsigned long FNIC_HOST_RESET_SETTLE_TIME ;
 int FNIC_SCSI_DBG (int ,int ,char*) ;
 unsigned long HZ ;
 int KERN_DEBUG ;
 scalar_t__ LPORT_ST_READY ;
 int SUCCESS ;
 scalar_t__ fnic_reset (struct Scsi_Host*) ;
 unsigned long jiffies ;
 struct fnic* lport_priv (struct fc_lport*) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ssleep (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int fnic_host_reset(struct scsi_cmnd *sc)
{
 int ret;
 unsigned long wait_host_tmo;
 struct Scsi_Host *shost = sc->device->host;
 struct fc_lport *lp = shost_priv(shost);
 struct fnic *fnic = lport_priv(lp);
 unsigned long flags;

 spin_lock_irqsave(&fnic->fnic_lock, flags);
 if (fnic->internal_reset_inprogress == 0) {
  fnic->internal_reset_inprogress = 1;
 } else {
  spin_unlock_irqrestore(&fnic->fnic_lock, flags);
  FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
   "host reset in progress skipping another host reset\n");
  return SUCCESS;
 }
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);






 ret = (fnic_reset(shost) == 0) ? SUCCESS : FAILED;
 if (ret == SUCCESS) {
  wait_host_tmo = jiffies + FNIC_HOST_RESET_SETTLE_TIME * HZ;
  ret = FAILED;
  while (time_before(jiffies, wait_host_tmo)) {
   if ((lp->state == LPORT_ST_READY) &&
       (lp->link_up)) {
    ret = SUCCESS;
    break;
   }
   ssleep(1);
  }
 }

 spin_lock_irqsave(&fnic->fnic_lock, flags);
 fnic->internal_reset_inprogress = 0;
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);
 return ret;
}
