
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvme_nvm_id20 {int dummy; } ;
struct nvme_nvm_id12 {int ver_id; } ;
struct TYPE_6__ {int nsid; int opcode; } ;
struct nvme_nvm_command {TYPE_2__ identity; } ;
struct nvme_ns {TYPE_4__* ctrl; TYPE_3__* head; } ;
struct nvme_command {int dummy; } ;
struct nvm_dev {int geo; TYPE_1__* q; } ;
struct TYPE_8__ {int device; int admin_q; } ;
struct TYPE_7__ {int ns_id; } ;
struct TYPE_5__ {struct nvme_ns* queuedata; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int dev_err (int ,char*,int) ;
 int kfree (struct nvme_nvm_id12*) ;
 struct nvme_nvm_id12* kmalloc (int,int ) ;
 int nvme_nvm_admin_identity ;
 int nvme_nvm_setup_12 (struct nvme_nvm_id12*,int *) ;
 int nvme_nvm_setup_20 (struct nvme_nvm_id20*,int *) ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,struct nvme_nvm_id12*,int) ;

__attribute__((used)) static int nvme_nvm_identity(struct nvm_dev *nvmdev)
{
 struct nvme_ns *ns = nvmdev->q->queuedata;
 struct nvme_nvm_id12 *id;
 struct nvme_nvm_command c = {};
 int ret;

 c.identity.opcode = nvme_nvm_admin_identity;
 c.identity.nsid = cpu_to_le32(ns->head->ns_id);

 id = kmalloc(sizeof(struct nvme_nvm_id12), GFP_KERNEL);
 if (!id)
  return -ENOMEM;

 ret = nvme_submit_sync_cmd(ns->ctrl->admin_q, (struct nvme_command *)&c,
    id, sizeof(struct nvme_nvm_id12));
 if (ret) {
  ret = -EIO;
  goto out;
 }





 switch (id->ver_id) {
 case 1:
  ret = nvme_nvm_setup_12(id, &nvmdev->geo);
  break;
 case 2:
  ret = nvme_nvm_setup_20((struct nvme_nvm_id20 *)id,
       &nvmdev->geo);
  break;
 default:
  dev_err(ns->ctrl->device, "OCSSD revision not supported (%d)\n",
       id->ver_id);
  ret = -EINVAL;
 }

out:
 kfree(id);
 return ret;
}
