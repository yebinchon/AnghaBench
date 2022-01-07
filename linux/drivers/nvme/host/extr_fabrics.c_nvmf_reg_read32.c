
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union nvme_result {int u64; } ;
typedef int u32 ;
struct nvme_ctrl {int device; int fabrics_q; } ;
struct TYPE_2__ {int offset; int fctype; int opcode; } ;
struct nvme_command {TYPE_1__ prop_get; } ;
typedef int cmd ;


 int NVME_QID_ANY ;
 int NVME_SC_DNR ;
 int __nvme_submit_sync_cmd (int ,struct nvme_command*,union nvme_result*,int *,int ,int ,int ,int ,int ,int) ;
 int cpu_to_le32 (int ) ;
 int dev_err (int ,char*,int,int ) ;
 int le64_to_cpu (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_fabrics_command ;
 int nvme_fabrics_type_property_get ;
 scalar_t__ unlikely (int) ;

int nvmf_reg_read32(struct nvme_ctrl *ctrl, u32 off, u32 *val)
{
 struct nvme_command cmd;
 union nvme_result res;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 cmd.prop_get.opcode = nvme_fabrics_command;
 cmd.prop_get.fctype = nvme_fabrics_type_property_get;
 cmd.prop_get.offset = cpu_to_le32(off);

 ret = __nvme_submit_sync_cmd(ctrl->fabrics_q, &cmd, &res, ((void*)0), 0, 0,
   NVME_QID_ANY, 0, 0, 0);

 if (ret >= 0)
  *val = le64_to_cpu(res.u64);
 if (unlikely(ret != 0))
  dev_err(ctrl->device,
   "Property Get error: %d, offset %#x\n",
   ret > 0 ? ret & ~NVME_SC_DNR : ret, off);

 return ret;
}
