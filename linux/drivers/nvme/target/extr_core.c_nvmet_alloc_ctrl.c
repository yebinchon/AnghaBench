
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nvmet_subsys {scalar_t__ type; int lock; int ctrls; scalar_t__ max_qid; } ;
struct nvmet_sq {int dummy; } ;
struct nvmet_req {int ops; int port; TYPE_2__* cqe; } ;
struct nvmet_ctrl {int cntlid; struct nvmet_ctrl* changed_ns_list; struct nvmet_ctrl* cqs; struct nvmet_ctrl* sqs; int subsys_entry; int error_lock; scalar_t__ err_counter; int kato; struct nvmet_subsys* subsys; int ops; int aen_enabled; int ref; int hostnqn; int subsysnqn; int fatal_err_work; int p2p_ns_map; int async_events; int async_event_work; int port; int lock; } ;
struct nvmet_cq {int dummy; } ;
typedef int __le32 ;
struct TYPE_3__ {void* u32; } ;
struct TYPE_4__ {TYPE_1__ result; } ;


 int DIV_ROUND_UP (int ,int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 void* IPO_IATTR_CONNECT_DATA (char const*) ;
 int NVMET_AEN_CFG_OPTIONAL ;
 int NVMET_DISC_KATO_MS ;
 int NVME_CNTLID_MAX ;
 int NVME_CNTLID_MIN ;
 int NVME_MAX_CHANGED_NAMESPACES ;
 scalar_t__ NVME_NQN_DISC ;
 int NVME_SC_CONNECT_CTRL_BUSY ;
 int NVME_SC_CONNECT_INVALID_HOST ;
 int NVME_SC_CONNECT_INVALID_PARAM ;
 int NVME_SC_DNR ;
 int NVME_SC_INTERNAL ;
 int NVMF_NQN_SIZE ;
 int WRITE_ONCE (int ,int ) ;
 int cntlid_ida ;
 int down_read (int *) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 void* kcalloc (scalar_t__,int,int ) ;
 int kfree (struct nvmet_ctrl*) ;
 struct nvmet_ctrl* kmalloc_array (int ,int,int ) ;
 int kref_init (int *) ;
 struct nvmet_ctrl* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,char const*,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmet_async_event_work ;
 int nvmet_config_sem ;
 int nvmet_fatal_error_handler ;
 struct nvmet_subsys* nvmet_find_get_subsys (int ,char const*) ;
 int nvmet_host_allowed (struct nvmet_subsys*,char const*) ;
 int nvmet_init_cap (struct nvmet_ctrl*) ;
 int nvmet_setup_p2p_ns_map (struct nvmet_ctrl*,struct nvmet_req*) ;
 int nvmet_start_keep_alive_timer (struct nvmet_ctrl*) ;
 int nvmet_subsys_put (struct nvmet_subsys*) ;
 int pr_info (char*,char const*,char const*) ;
 int pr_warn (char*,char const*) ;
 int spin_lock_init (int *) ;
 int up_read (int *) ;

u16 nvmet_alloc_ctrl(const char *subsysnqn, const char *hostnqn,
  struct nvmet_req *req, u32 kato, struct nvmet_ctrl **ctrlp)
{
 struct nvmet_subsys *subsys;
 struct nvmet_ctrl *ctrl;
 int ret;
 u16 status;

 status = NVME_SC_CONNECT_INVALID_PARAM | NVME_SC_DNR;
 subsys = nvmet_find_get_subsys(req->port, subsysnqn);
 if (!subsys) {
  pr_warn("connect request for invalid subsystem %s!\n",
   subsysnqn);
  req->cqe->result.u32 = IPO_IATTR_CONNECT_DATA(subsysnqn);
  goto out;
 }

 status = NVME_SC_CONNECT_INVALID_PARAM | NVME_SC_DNR;
 down_read(&nvmet_config_sem);
 if (!nvmet_host_allowed(subsys, hostnqn)) {
  pr_info("connect by host %s for subsystem %s not allowed\n",
   hostnqn, subsysnqn);
  req->cqe->result.u32 = IPO_IATTR_CONNECT_DATA(hostnqn);
  up_read(&nvmet_config_sem);
  status = NVME_SC_CONNECT_INVALID_HOST | NVME_SC_DNR;
  goto out_put_subsystem;
 }
 up_read(&nvmet_config_sem);

 status = NVME_SC_INTERNAL;
 ctrl = kzalloc(sizeof(*ctrl), GFP_KERNEL);
 if (!ctrl)
  goto out_put_subsystem;
 mutex_init(&ctrl->lock);

 nvmet_init_cap(ctrl);

 ctrl->port = req->port;

 INIT_WORK(&ctrl->async_event_work, nvmet_async_event_work);
 INIT_LIST_HEAD(&ctrl->async_events);
 INIT_RADIX_TREE(&ctrl->p2p_ns_map, GFP_KERNEL);
 INIT_WORK(&ctrl->fatal_err_work, nvmet_fatal_error_handler);

 memcpy(ctrl->subsysnqn, subsysnqn, NVMF_NQN_SIZE);
 memcpy(ctrl->hostnqn, hostnqn, NVMF_NQN_SIZE);

 kref_init(&ctrl->ref);
 ctrl->subsys = subsys;
 WRITE_ONCE(ctrl->aen_enabled, NVMET_AEN_CFG_OPTIONAL);

 ctrl->changed_ns_list = kmalloc_array(NVME_MAX_CHANGED_NAMESPACES,
   sizeof(__le32), GFP_KERNEL);
 if (!ctrl->changed_ns_list)
  goto out_free_ctrl;

 ctrl->cqs = kcalloc(subsys->max_qid + 1,
   sizeof(struct nvmet_cq *),
   GFP_KERNEL);
 if (!ctrl->cqs)
  goto out_free_changed_ns_list;

 ctrl->sqs = kcalloc(subsys->max_qid + 1,
   sizeof(struct nvmet_sq *),
   GFP_KERNEL);
 if (!ctrl->sqs)
  goto out_free_cqs;

 ret = ida_simple_get(&cntlid_ida,
        NVME_CNTLID_MIN, NVME_CNTLID_MAX,
        GFP_KERNEL);
 if (ret < 0) {
  status = NVME_SC_CONNECT_CTRL_BUSY | NVME_SC_DNR;
  goto out_free_sqs;
 }
 ctrl->cntlid = ret;

 ctrl->ops = req->ops;





 if ((ctrl->subsys->type == NVME_NQN_DISC) && !kato)
  kato = NVMET_DISC_KATO_MS;


 ctrl->kato = DIV_ROUND_UP(kato, 1000);

 ctrl->err_counter = 0;
 spin_lock_init(&ctrl->error_lock);

 nvmet_start_keep_alive_timer(ctrl);

 mutex_lock(&subsys->lock);
 list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
 nvmet_setup_p2p_ns_map(ctrl, req);
 mutex_unlock(&subsys->lock);

 *ctrlp = ctrl;
 return 0;

out_free_sqs:
 kfree(ctrl->sqs);
out_free_cqs:
 kfree(ctrl->cqs);
out_free_changed_ns_list:
 kfree(ctrl->changed_ns_list);
out_free_ctrl:
 kfree(ctrl);
out_put_subsystem:
 nvmet_subsys_put(subsys);
out:
 return status;
}
