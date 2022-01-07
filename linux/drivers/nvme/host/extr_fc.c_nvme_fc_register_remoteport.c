
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_fc_remote_port {int port_num; int port_state; int port_id; int port_name; int node_name; int port_role; struct nvme_fc_rport* private; int * localport; } ;
struct nvme_fc_rport {struct nvme_fc_remote_port remoteport; int endp_list; struct nvme_fc_lport* lport; int dev; int lock; int act_ctrl_cnt; int ref; int disc_list; int ls_req_list; int ctrl_list; } ;
struct nvme_fc_port_info {int port_id; int port_name; int node_name; int port_role; } ;
struct nvme_fc_lport {int endp_list; int dev; int localport; int endp_cnt; TYPE_1__* ops; } ;
struct nvme_fc_local_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ remote_priv_sz; } ;


 int ENOMEM ;
 int ENOSPC ;
 int ESHUTDOWN ;
 int FC_OBJSTATE_ONLINE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct nvme_fc_rport*) ;
 int PTR_ERR (struct nvme_fc_rport*) ;
 int __nvme_fc_set_dev_loss_tmo (struct nvme_fc_rport*,struct nvme_fc_port_info*) ;
 int atomic_set (int *,int ) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct nvme_fc_rport*) ;
 struct nvme_fc_rport* kmalloc (scalar_t__,int ) ;
 int kref_init (int *) ;
 int list_add_tail (int *,int *) ;
 struct nvme_fc_lport* localport_to_lport (struct nvme_fc_local_port*) ;
 struct nvme_fc_rport* nvme_fc_attach_to_suspended_rport (struct nvme_fc_lport*,struct nvme_fc_port_info*) ;
 int nvme_fc_lock ;
 int nvme_fc_lport_get (struct nvme_fc_lport*) ;
 int nvme_fc_lport_put (struct nvme_fc_lport*) ;
 int nvme_fc_signal_discovery_scan (struct nvme_fc_lport*,struct nvme_fc_rport*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
nvme_fc_register_remoteport(struct nvme_fc_local_port *localport,
    struct nvme_fc_port_info *pinfo,
    struct nvme_fc_remote_port **portptr)
{
 struct nvme_fc_lport *lport = localport_to_lport(localport);
 struct nvme_fc_rport *newrec;
 unsigned long flags;
 int ret, idx;

 if (!nvme_fc_lport_get(lport)) {
  ret = -ESHUTDOWN;
  goto out_reghost_failed;
 }






 newrec = nvme_fc_attach_to_suspended_rport(lport, pinfo);


 if (IS_ERR(newrec)) {
  ret = PTR_ERR(newrec);
  goto out_lport_put;


 } else if (newrec) {
  nvme_fc_lport_put(lport);
  __nvme_fc_set_dev_loss_tmo(newrec, pinfo);
  nvme_fc_signal_discovery_scan(lport, newrec);
  *portptr = &newrec->remoteport;
  return 0;
 }



 newrec = kmalloc((sizeof(*newrec) + lport->ops->remote_priv_sz),
    GFP_KERNEL);
 if (!newrec) {
  ret = -ENOMEM;
  goto out_lport_put;
 }

 idx = ida_simple_get(&lport->endp_cnt, 0, 0, GFP_KERNEL);
 if (idx < 0) {
  ret = -ENOSPC;
  goto out_kfree_rport;
 }

 INIT_LIST_HEAD(&newrec->endp_list);
 INIT_LIST_HEAD(&newrec->ctrl_list);
 INIT_LIST_HEAD(&newrec->ls_req_list);
 INIT_LIST_HEAD(&newrec->disc_list);
 kref_init(&newrec->ref);
 atomic_set(&newrec->act_ctrl_cnt, 0);
 spin_lock_init(&newrec->lock);
 newrec->remoteport.localport = &lport->localport;
 newrec->dev = lport->dev;
 newrec->lport = lport;
 newrec->remoteport.private = &newrec[1];
 newrec->remoteport.port_role = pinfo->port_role;
 newrec->remoteport.node_name = pinfo->node_name;
 newrec->remoteport.port_name = pinfo->port_name;
 newrec->remoteport.port_id = pinfo->port_id;
 newrec->remoteport.port_state = FC_OBJSTATE_ONLINE;
 newrec->remoteport.port_num = idx;
 __nvme_fc_set_dev_loss_tmo(newrec, pinfo);

 spin_lock_irqsave(&nvme_fc_lock, flags);
 list_add_tail(&newrec->endp_list, &lport->endp_list);
 spin_unlock_irqrestore(&nvme_fc_lock, flags);

 nvme_fc_signal_discovery_scan(lport, newrec);

 *portptr = &newrec->remoteport;
 return 0;

out_kfree_rport:
 kfree(newrec);
out_lport_put:
 nvme_fc_lport_put(lport);
out_reghost_failed:
 *portptr = ((void*)0);
 return ret;
}
