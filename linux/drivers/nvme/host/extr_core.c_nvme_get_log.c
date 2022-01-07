
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u64 ;
typedef int u32 ;
struct nvme_ctrl {int admin_q; } ;
struct TYPE_2__ {void* lpou; void* lpol; void* numdu; void* numdl; void* lsp; void* lid; void* nsid; int opcode; } ;
struct nvme_command {TYPE_1__ get_log_page; } ;


 void* cpu_to_le16 (unsigned long) ;
 void* cpu_to_le32 (int ) ;
 int lower_32_bits (int ) ;
 int nvme_admin_get_log_page ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,void*,size_t) ;
 int upper_32_bits (int ) ;

int nvme_get_log(struct nvme_ctrl *ctrl, u32 nsid, u8 log_page, u8 lsp,
  void *log, size_t size, u64 offset)
{
 struct nvme_command c = { };
 unsigned long dwlen = size / 4 - 1;

 c.get_log_page.opcode = nvme_admin_get_log_page;
 c.get_log_page.nsid = cpu_to_le32(nsid);
 c.get_log_page.lid = log_page;
 c.get_log_page.lsp = lsp;
 c.get_log_page.numdl = cpu_to_le16(dwlen & ((1 << 16) - 1));
 c.get_log_page.numdu = cpu_to_le16(dwlen >> 16);
 c.get_log_page.lpol = cpu_to_le32(lower_32_bits(offset));
 c.get_log_page.lpou = cpu_to_le32(upper_32_bits(offset));

 return nvme_submit_sync_cmd(ctrl->admin_q, &c, log, size);
}
