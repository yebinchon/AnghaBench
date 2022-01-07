
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {int admin_q; } ;
struct TYPE_2__ {int nsid; int cns; int opcode; } ;
struct nvme_command {TYPE_1__ identify; } ;
typedef int __le32 ;


 int NVME_IDENTIFY_DATA_SIZE ;
 int NVME_ID_CNS_NS_ACTIVE_LIST ;
 int cpu_to_le32 (unsigned int) ;
 int nvme_admin_identify ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,int *,int ) ;

__attribute__((used)) static int nvme_identify_ns_list(struct nvme_ctrl *dev, unsigned nsid, __le32 *ns_list)
{
 struct nvme_command c = { };

 c.identify.opcode = nvme_admin_identify;
 c.identify.cns = NVME_ID_CNS_NS_ACTIVE_LIST;
 c.identify.nsid = cpu_to_le32(nsid);
 return nvme_submit_sync_cmd(dev->admin_q, &c, ns_list,
        NVME_IDENTIFY_DATA_SIZE);
}
