
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {int admin_q; } ;
struct TYPE_2__ {int endir; int tdtype; int dtype; int doper; int nsid; int opcode; } ;
struct nvme_command {TYPE_1__ directive; } ;
typedef int c ;


 int NVME_DIR_ENDIR ;
 int NVME_DIR_IDENTIFY ;
 int NVME_DIR_SND_ID_OP_ENABLE ;
 int NVME_DIR_STREAMS ;
 int NVME_NSID_ALL ;
 int cpu_to_le32 (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_directive_send ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,int *,int ) ;

__attribute__((used)) static int nvme_toggle_streams(struct nvme_ctrl *ctrl, bool enable)
{
 struct nvme_command c;

 memset(&c, 0, sizeof(c));

 c.directive.opcode = nvme_admin_directive_send;
 c.directive.nsid = cpu_to_le32(NVME_NSID_ALL);
 c.directive.doper = NVME_DIR_SND_ID_OP_ENABLE;
 c.directive.dtype = NVME_DIR_IDENTIFY;
 c.directive.tdtype = NVME_DIR_STREAMS;
 c.directive.endir = enable ? NVME_DIR_ENDIR : 0;

 return nvme_submit_sync_cmd(ctrl->admin_q, &c, ((void*)0), 0);
}
