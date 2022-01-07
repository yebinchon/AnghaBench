
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_port_template {int dma_boundary; scalar_t__ local_priv_sz; int max_dif_sgl_segments; int max_sgl_segments; int max_hw_queues; int fcp_abort; int ls_abort; int fcp_io; int ls_req; int remoteport_delete; int localport_delete; } ;
struct nvme_fc_port_info {int port_id; int port_role; int port_name; int node_name; } ;
struct nvme_fc_local_port {int port_num; int port_state; int port_id; int port_role; int port_name; int node_name; struct nvme_fc_lport* private; } ;
struct nvme_fc_lport {struct nvme_fc_local_port localport; int port_list; int endp_cnt; struct device* dev; struct nvme_fc_port_template* ops; int act_rport_cnt; int ref; int endp_list; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENOSPC ;
 int FC_OBJSTATE_ONLINE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct nvme_fc_lport*) ;
 int PTR_ERR (struct nvme_fc_lport*) ;
 int atomic_set (int *,int ) ;
 int dma_set_seg_boundary (struct device*,int ) ;
 int get_device (struct device*) ;
 int ida_init (int *) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct nvme_fc_lport*) ;
 struct nvme_fc_lport* kmalloc (scalar_t__,int ) ;
 int kref_init (int *) ;
 int list_add_tail (int *,int *) ;
 struct nvme_fc_lport* nvme_fc_attach_to_unreg_lport (struct nvme_fc_port_info*,struct nvme_fc_port_template*,struct device*) ;
 int nvme_fc_local_port_cnt ;
 int nvme_fc_lock ;
 int nvme_fc_lport_list ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
nvme_fc_register_localport(struct nvme_fc_port_info *pinfo,
   struct nvme_fc_port_template *template,
   struct device *dev,
   struct nvme_fc_local_port **portptr)
{
 struct nvme_fc_lport *newrec;
 unsigned long flags;
 int ret, idx;

 if (!template->localport_delete || !template->remoteport_delete ||
     !template->ls_req || !template->fcp_io ||
     !template->ls_abort || !template->fcp_abort ||
     !template->max_hw_queues || !template->max_sgl_segments ||
     !template->max_dif_sgl_segments || !template->dma_boundary) {
  ret = -EINVAL;
  goto out_reghost_failed;
 }
 newrec = nvme_fc_attach_to_unreg_lport(pinfo, template, dev);


 if (IS_ERR(newrec)) {
  ret = PTR_ERR(newrec);
  goto out_reghost_failed;


 } else if (newrec) {
  *portptr = &newrec->localport;
  return 0;
 }



 newrec = kmalloc((sizeof(*newrec) + template->local_priv_sz),
    GFP_KERNEL);
 if (!newrec) {
  ret = -ENOMEM;
  goto out_reghost_failed;
 }

 idx = ida_simple_get(&nvme_fc_local_port_cnt, 0, 0, GFP_KERNEL);
 if (idx < 0) {
  ret = -ENOSPC;
  goto out_fail_kfree;
 }

 if (!get_device(dev) && dev) {
  ret = -ENODEV;
  goto out_ida_put;
 }

 INIT_LIST_HEAD(&newrec->port_list);
 INIT_LIST_HEAD(&newrec->endp_list);
 kref_init(&newrec->ref);
 atomic_set(&newrec->act_rport_cnt, 0);
 newrec->ops = template;
 newrec->dev = dev;
 ida_init(&newrec->endp_cnt);
 newrec->localport.private = &newrec[1];
 newrec->localport.node_name = pinfo->node_name;
 newrec->localport.port_name = pinfo->port_name;
 newrec->localport.port_role = pinfo->port_role;
 newrec->localport.port_id = pinfo->port_id;
 newrec->localport.port_state = FC_OBJSTATE_ONLINE;
 newrec->localport.port_num = idx;

 spin_lock_irqsave(&nvme_fc_lock, flags);
 list_add_tail(&newrec->port_list, &nvme_fc_lport_list);
 spin_unlock_irqrestore(&nvme_fc_lock, flags);

 if (dev)
  dma_set_seg_boundary(dev, template->dma_boundary);

 *portptr = &newrec->localport;
 return 0;

out_ida_put:
 ida_simple_remove(&nvme_fc_local_port_cnt, idx);
out_fail_kfree:
 kfree(newrec);
out_reghost_failed:
 *portptr = ((void*)0);

 return ret;
}
