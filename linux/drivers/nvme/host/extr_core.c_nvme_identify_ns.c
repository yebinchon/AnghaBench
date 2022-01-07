
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_id_ns {int dummy; } ;
struct nvme_ctrl {int device; int admin_q; } ;
struct TYPE_2__ {int cns; int nsid; int opcode; } ;
struct nvme_command {TYPE_1__ identify; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NVME_ID_CNS_NS ;
 int cpu_to_le32 (unsigned int) ;
 int dev_warn (int ,char*,int) ;
 int kfree (struct nvme_id_ns*) ;
 struct nvme_id_ns* kmalloc (int,int ) ;
 int nvme_admin_identify ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,struct nvme_id_ns*,int) ;

__attribute__((used)) static int nvme_identify_ns(struct nvme_ctrl *ctrl,
  unsigned nsid, struct nvme_id_ns **id)
{
 struct nvme_command c = { };
 int error;


 c.identify.opcode = nvme_admin_identify;
 c.identify.nsid = cpu_to_le32(nsid);
 c.identify.cns = NVME_ID_CNS_NS;

 *id = kmalloc(sizeof(**id), GFP_KERNEL);
 if (!*id)
  return -ENOMEM;

 error = nvme_submit_sync_cmd(ctrl->admin_q, &c, *id, sizeof(**id));
 if (error) {
  dev_warn(ctrl->device, "Identify namespace failed (%d)\n", error);
  kfree(*id);
 }

 return error;
}
