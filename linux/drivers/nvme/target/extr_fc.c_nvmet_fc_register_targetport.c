
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_target_port {int port_num; int port_id; struct nvmet_fc_tgtport* private; int port_name; int node_name; } ;
struct nvmet_fc_tgtport {struct nvmet_fc_target_port fc_target_port; int tgt_list; scalar_t__ max_sg_cnt; int assoc_cnt; int ref; int assoc_list; int ls_busylist; int ls_list; int lock; struct nvmet_fc_target_template* ops; struct device* dev; } ;
struct nvmet_fc_target_template {scalar_t__ max_sgl_segments; scalar_t__ target_priv_sz; int dma_boundary; int max_dif_sgl_segments; int max_hw_queues; int targetport_delete; int fcp_req_release; int fcp_abort; int fcp_op; int xmt_ls_rsp; } ;
struct nvmet_fc_port_info {int port_id; int port_name; int node_name; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int get_device (struct device*) ;
 int ida_init (int *) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct nvmet_fc_tgtport*) ;
 int kref_init (int *) ;
 struct nvmet_fc_tgtport* kzalloc (scalar_t__,int ) ;
 int list_add_tail (int *,int *) ;
 int nvmet_fc_alloc_ls_iodlist (struct nvmet_fc_tgtport*) ;
 int nvmet_fc_portentry_rebind_tgt (struct nvmet_fc_tgtport*) ;
 int nvmet_fc_target_list ;
 int nvmet_fc_tgtlock ;
 int nvmet_fc_tgtport_cnt ;
 int put_device (struct device*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
nvmet_fc_register_targetport(struct nvmet_fc_port_info *pinfo,
   struct nvmet_fc_target_template *template,
   struct device *dev,
   struct nvmet_fc_target_port **portptr)
{
 struct nvmet_fc_tgtport *newrec;
 unsigned long flags;
 int ret, idx;

 if (!template->xmt_ls_rsp || !template->fcp_op ||
     !template->fcp_abort ||
     !template->fcp_req_release || !template->targetport_delete ||
     !template->max_hw_queues || !template->max_sgl_segments ||
     !template->max_dif_sgl_segments || !template->dma_boundary) {
  ret = -EINVAL;
  goto out_regtgt_failed;
 }

 newrec = kzalloc((sizeof(*newrec) + template->target_priv_sz),
    GFP_KERNEL);
 if (!newrec) {
  ret = -ENOMEM;
  goto out_regtgt_failed;
 }

 idx = ida_simple_get(&nvmet_fc_tgtport_cnt, 0, 0, GFP_KERNEL);
 if (idx < 0) {
  ret = -ENOSPC;
  goto out_fail_kfree;
 }

 if (!get_device(dev) && dev) {
  ret = -ENODEV;
  goto out_ida_put;
 }

 newrec->fc_target_port.node_name = pinfo->node_name;
 newrec->fc_target_port.port_name = pinfo->port_name;
 newrec->fc_target_port.private = &newrec[1];
 newrec->fc_target_port.port_id = pinfo->port_id;
 newrec->fc_target_port.port_num = idx;
 INIT_LIST_HEAD(&newrec->tgt_list);
 newrec->dev = dev;
 newrec->ops = template;
 spin_lock_init(&newrec->lock);
 INIT_LIST_HEAD(&newrec->ls_list);
 INIT_LIST_HEAD(&newrec->ls_busylist);
 INIT_LIST_HEAD(&newrec->assoc_list);
 kref_init(&newrec->ref);
 ida_init(&newrec->assoc_cnt);
 newrec->max_sg_cnt = template->max_sgl_segments;

 ret = nvmet_fc_alloc_ls_iodlist(newrec);
 if (ret) {
  ret = -ENOMEM;
  goto out_free_newrec;
 }

 nvmet_fc_portentry_rebind_tgt(newrec);

 spin_lock_irqsave(&nvmet_fc_tgtlock, flags);
 list_add_tail(&newrec->tgt_list, &nvmet_fc_target_list);
 spin_unlock_irqrestore(&nvmet_fc_tgtlock, flags);

 *portptr = &newrec->fc_target_port;
 return 0;

out_free_newrec:
 put_device(dev);
out_ida_put:
 ida_simple_remove(&nvmet_fc_tgtport_cnt, idx);
out_fail_kfree:
 kfree(newrec);
out_regtgt_failed:
 *portptr = ((void*)0);
 return ret;
}
