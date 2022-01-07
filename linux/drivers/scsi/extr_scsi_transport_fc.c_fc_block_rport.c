
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport {scalar_t__ port_state; int flags; } ;
struct Scsi_Host {int host_lock; } ;


 int FAST_IO_FAIL ;
 scalar_t__ FC_PORTSTATE_BLOCKED ;
 int FC_RPORT_FAST_FAIL_TIMEDOUT ;
 int msleep (int) ;
 struct Scsi_Host* rport_to_shost (struct fc_rport*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int fc_block_rport(struct fc_rport *rport)
{
 struct Scsi_Host *shost = rport_to_shost(rport);
 unsigned long flags;

 spin_lock_irqsave(shost->host_lock, flags);
 while (rport->port_state == FC_PORTSTATE_BLOCKED &&
        !(rport->flags & FC_RPORT_FAST_FAIL_TIMEDOUT)) {
  spin_unlock_irqrestore(shost->host_lock, flags);
  msleep(1000);
  spin_lock_irqsave(shost->host_lock, flags);
 }
 spin_unlock_irqrestore(shost->host_lock, flags);

 if (rport->flags & FC_RPORT_FAST_FAIL_TIMEDOUT)
  return FAST_IO_FAIL;

 return 0;
}
