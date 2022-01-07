
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_fc_lport {int localport; TYPE_1__* ops; int act_rport_cnt; } ;
struct nvme_fc_local_port {scalar_t__ port_state; } ;
struct TYPE_2__ {int (* localport_delete ) (int *) ;} ;


 int EINVAL ;
 scalar_t__ FC_OBJSTATE_DELETED ;
 scalar_t__ FC_OBJSTATE_ONLINE ;
 scalar_t__ atomic_read (int *) ;
 struct nvme_fc_lport* localport_to_lport (struct nvme_fc_local_port*) ;
 int nvme_fc_lock ;
 int nvme_fc_lport_put (struct nvme_fc_lport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int *) ;

int
nvme_fc_unregister_localport(struct nvme_fc_local_port *portptr)
{
 struct nvme_fc_lport *lport = localport_to_lport(portptr);
 unsigned long flags;

 if (!portptr)
  return -EINVAL;

 spin_lock_irqsave(&nvme_fc_lock, flags);

 if (portptr->port_state != FC_OBJSTATE_ONLINE) {
  spin_unlock_irqrestore(&nvme_fc_lock, flags);
  return -EINVAL;
 }
 portptr->port_state = FC_OBJSTATE_DELETED;

 spin_unlock_irqrestore(&nvme_fc_lock, flags);

 if (atomic_read(&lport->act_rport_cnt) == 0)
  lport->ops->localport_delete(&lport->localport);

 nvme_fc_lport_put(lport);

 return 0;
}
