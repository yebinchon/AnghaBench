
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvme_ctrl {int device; int fabrics_q; } ;
struct TYPE_2__ {int value; int offset; scalar_t__ attrib; int fctype; int opcode; } ;
struct nvme_command {TYPE_1__ prop_set; } ;
typedef int cmd ;


 int NVME_QID_ANY ;
 int NVME_SC_DNR ;
 int __nvme_submit_sync_cmd (int ,struct nvme_command*,int *,int *,int ,int ,int ,int ,int ,int) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int dev_err (int ,char*,int,int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_fabrics_command ;
 int nvme_fabrics_type_property_set ;
 scalar_t__ unlikely (int) ;

int nvmf_reg_write32(struct nvme_ctrl *ctrl, u32 off, u32 val)
{
 struct nvme_command cmd;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 cmd.prop_set.opcode = nvme_fabrics_command;
 cmd.prop_set.fctype = nvme_fabrics_type_property_set;
 cmd.prop_set.attrib = 0;
 cmd.prop_set.offset = cpu_to_le32(off);
 cmd.prop_set.value = cpu_to_le64(val);

 ret = __nvme_submit_sync_cmd(ctrl->fabrics_q, &cmd, ((void*)0), ((void*)0), 0, 0,
   NVME_QID_ANY, 0, 0, 0);
 if (unlikely(ret))
  dev_err(ctrl->device,
   "Property Set error: %d, offset %#x\n",
   ret > 0 ? ret & ~NVME_SC_DNR : ret, off);
 return ret;
}
