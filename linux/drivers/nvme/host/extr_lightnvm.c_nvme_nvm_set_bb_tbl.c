
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ppa_addr {int ppa; } ;
struct TYPE_7__ {int value; int nlb; int spba; int nsid; int opcode; } ;
struct nvme_nvm_command {TYPE_3__ set_bb; } ;
struct nvme_ns {TYPE_4__* ctrl; TYPE_2__* head; } ;
struct nvme_command {int dummy; } ;
struct nvm_dev {TYPE_1__* q; } ;
struct TYPE_8__ {int device; int admin_q; } ;
struct TYPE_6__ {int ns_id; } ;
struct TYPE_5__ {struct nvme_ns* queuedata; } ;


 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int dev_err (int ,char*,int) ;
 int nvme_nvm_admin_set_bb_tbl ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,int *,int ) ;

__attribute__((used)) static int nvme_nvm_set_bb_tbl(struct nvm_dev *nvmdev, struct ppa_addr *ppas,
       int nr_ppas, int type)
{
 struct nvme_ns *ns = nvmdev->q->queuedata;
 struct nvme_nvm_command c = {};
 int ret = 0;

 c.set_bb.opcode = nvme_nvm_admin_set_bb_tbl;
 c.set_bb.nsid = cpu_to_le32(ns->head->ns_id);
 c.set_bb.spba = cpu_to_le64(ppas->ppa);
 c.set_bb.nlb = cpu_to_le16(nr_ppas - 1);
 c.set_bb.value = type;

 ret = nvme_submit_sync_cmd(ns->ctrl->admin_q, (struct nvme_command *)&c,
        ((void*)0), 0);
 if (ret)
  dev_err(ns->ctrl->device, "set bad block table failed (%d)\n",
         ret);
 return ret;
}
