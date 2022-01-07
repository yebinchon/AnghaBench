
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union nvme_result {int u32; } ;
typedef int u8 ;
typedef int u32 ;
struct nvme_ctrl {int admin_q; } ;
struct TYPE_2__ {void* dword11; void* fid; int opcode; } ;
struct nvme_command {TYPE_1__ features; } ;
typedef int c ;


 int NVME_QID_ANY ;
 int __nvme_submit_sync_cmd (int ,struct nvme_command*,union nvme_result*,void*,size_t,int ,int ,int ,int ,int) ;
 void* cpu_to_le32 (unsigned int) ;
 int le32_to_cpu (int ) ;
 int memset (struct nvme_command*,int ,int) ;

__attribute__((used)) static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned int fid,
  unsigned int dword11, void *buffer, size_t buflen, u32 *result)
{
 struct nvme_command c;
 union nvme_result res;
 int ret;

 memset(&c, 0, sizeof(c));
 c.features.opcode = op;
 c.features.fid = cpu_to_le32(fid);
 c.features.dword11 = cpu_to_le32(dword11);

 ret = __nvme_submit_sync_cmd(dev->admin_q, &c, &res,
   buffer, buflen, 0, NVME_QID_ANY, 0, 0, 0);
 if (ret >= 0 && result)
  *result = le32_to_cpu(res.u32);
 return ret;
}
