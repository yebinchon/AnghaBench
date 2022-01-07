
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_id_ctrl {int dummy; } ;
struct nvme_ctrl {int admin_q; } ;
struct TYPE_2__ {int cns; int opcode; } ;
struct nvme_command {TYPE_1__ identify; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NVME_ID_CNS_CTRL ;
 int kfree (struct nvme_id_ctrl*) ;
 struct nvme_id_ctrl* kmalloc (int,int ) ;
 int nvme_admin_identify ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,struct nvme_id_ctrl*,int) ;

__attribute__((used)) static int nvme_identify_ctrl(struct nvme_ctrl *dev, struct nvme_id_ctrl **id)
{
 struct nvme_command c = { };
 int error;


 c.identify.opcode = nvme_admin_identify;
 c.identify.cns = NVME_ID_CNS_CTRL;

 *id = kmalloc(sizeof(struct nvme_id_ctrl), GFP_KERNEL);
 if (!*id)
  return -ENOMEM;

 error = nvme_submit_sync_cmd(dev->admin_q, &c, *id,
   sizeof(struct nvme_id_ctrl));
 if (error)
  kfree(*id);
 return error;
}
