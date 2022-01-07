
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_7__ {int next; } ;
struct megasas_instance {size_t max_scsi_cmds; int mfi_pool_lock; TYPE_3__ cmd_pool; int mfi_frame_size; struct fusion_context* ctrl_context; } ;
struct megasas_cmd_fusion {int dummy; } ;
struct megasas_cmd {int flags; size_t index; int list; TYPE_4__* frame; scalar_t__ frame_count; int * scmd; } ;
struct fusion_context {struct megasas_cmd_fusion** cmd_list; } ;
struct TYPE_6__ {int cmd; } ;
struct TYPE_5__ {int context; } ;
struct TYPE_8__ {TYPE_2__ hdr; TYPE_1__ io; } ;


 int DRV_DCMD_POLLED_MODE ;
 int MFI_CMD_INVALID ;
 int cpu_to_le32 (size_t) ;
 int list_add (int *,int ) ;
 int megasas_return_cmd_fusion (struct megasas_instance*,struct megasas_cmd_fusion*) ;
 int memset (TYPE_4__*,int ,int ) ;
 scalar_t__ reset_devices ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
megasas_return_cmd(struct megasas_instance *instance, struct megasas_cmd *cmd)
{
 unsigned long flags;
 u32 blk_tags;
 struct megasas_cmd_fusion *cmd_fusion;
 struct fusion_context *fusion = instance->ctrl_context;




 if (cmd->flags & DRV_DCMD_POLLED_MODE)
  return;

 spin_lock_irqsave(&instance->mfi_pool_lock, flags);

 if (fusion) {
  blk_tags = instance->max_scsi_cmds + cmd->index;
  cmd_fusion = fusion->cmd_list[blk_tags];
  megasas_return_cmd_fusion(instance, cmd_fusion);
 }
 cmd->scmd = ((void*)0);
 cmd->frame_count = 0;
 cmd->flags = 0;
 memset(cmd->frame, 0, instance->mfi_frame_size);
 cmd->frame->io.context = cpu_to_le32(cmd->index);
 if (!fusion && reset_devices)
  cmd->frame->hdr.cmd = MFI_CMD_INVALID;
 list_add(&cmd->list, (&instance->cmd_pool)->next);

 spin_unlock_irqrestore(&instance->mfi_pool_lock, flags);

}
