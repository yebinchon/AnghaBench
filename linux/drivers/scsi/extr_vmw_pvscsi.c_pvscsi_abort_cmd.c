
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pvscsi_ctx {TYPE_2__* cmd; } ;
struct pvscsi_adapter {int dummy; } ;
struct PVSCSICmdDescAbortCmd {int context; int target; int member_0; } ;
typedef int cmd ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int id; } ;


 int PVSCSI_CMD_ABORT_CMD ;
 int pvscsi_map_context (struct pvscsi_adapter const*,struct pvscsi_ctx const*) ;
 int pvscsi_write_cmd_desc (struct pvscsi_adapter const*,int ,struct PVSCSICmdDescAbortCmd*,int) ;

__attribute__((used)) static void pvscsi_abort_cmd(const struct pvscsi_adapter *adapter,
        const struct pvscsi_ctx *ctx)
{
 struct PVSCSICmdDescAbortCmd cmd = { 0 };

 cmd.target = ctx->cmd->device->id;
 cmd.context = pvscsi_map_context(adapter, ctx);

 pvscsi_write_cmd_desc(adapter, PVSCSI_CMD_ABORT_CMD, &cmd, sizeof(cmd));
}
