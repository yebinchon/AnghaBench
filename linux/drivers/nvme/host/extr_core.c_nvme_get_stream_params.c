
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dtype; int doper; void* numd; void* nsid; int opcode; } ;
struct streams_directive_params {TYPE_1__ directive; } ;
struct nvme_ctrl {int admin_q; } ;
struct nvme_command {TYPE_1__ directive; } ;
typedef int c ;


 int NVME_DIR_RCV_ST_OP_PARAM ;
 int NVME_DIR_STREAMS ;
 void* cpu_to_le32 (int) ;
 int memset (struct streams_directive_params*,int ,int) ;
 int nvme_admin_directive_recv ;
 int nvme_submit_sync_cmd (int ,struct streams_directive_params*,struct streams_directive_params*,int) ;

__attribute__((used)) static int nvme_get_stream_params(struct nvme_ctrl *ctrl,
      struct streams_directive_params *s, u32 nsid)
{
 struct nvme_command c;

 memset(&c, 0, sizeof(c));
 memset(s, 0, sizeof(*s));

 c.directive.opcode = nvme_admin_directive_recv;
 c.directive.nsid = cpu_to_le32(nsid);
 c.directive.numd = cpu_to_le32((sizeof(*s) >> 2) - 1);
 c.directive.doper = NVME_DIR_RCV_ST_OP_PARAM;
 c.directive.dtype = NVME_DIR_STREAMS;

 return nvme_submit_sync_cmd(ctrl->admin_q, &c, s, sizeof(*s));
}
