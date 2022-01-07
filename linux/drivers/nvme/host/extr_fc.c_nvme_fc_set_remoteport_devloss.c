
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev_loss_tmo; } ;
struct nvme_fc_rport {int lock; TYPE_1__ remoteport; } ;
struct nvme_fc_remote_port {scalar_t__ port_state; } ;


 int EINVAL ;
 scalar_t__ FC_OBJSTATE_ONLINE ;
 struct nvme_fc_rport* remoteport_to_rport (struct nvme_fc_remote_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
nvme_fc_set_remoteport_devloss(struct nvme_fc_remote_port *portptr,
   u32 dev_loss_tmo)
{
 struct nvme_fc_rport *rport = remoteport_to_rport(portptr);
 unsigned long flags;

 spin_lock_irqsave(&rport->lock, flags);

 if (portptr->port_state != FC_OBJSTATE_ONLINE) {
  spin_unlock_irqrestore(&rport->lock, flags);
  return -EINVAL;
 }


 rport->remoteport.dev_loss_tmo = dev_loss_tmo;

 spin_unlock_irqrestore(&rport->lock, flags);

 return 0;
}
