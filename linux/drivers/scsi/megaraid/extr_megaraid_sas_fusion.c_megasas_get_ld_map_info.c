
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct megasas_instance {int map_id; int mask_interrupts; TYPE_2__* pdev; struct fusion_context* ctrl_context; } ;
struct TYPE_6__ {void* b; } ;
struct megasas_dcmd_frame {int cmd_status; int sge_count; void* opcode; void* data_xfer_len; scalar_t__ pad_0; scalar_t__ timeout; int flags; int cmd; TYPE_3__ mbox; } ;
struct megasas_cmd {TYPE_1__* frame; } ;
struct fusion_context {int max_map_sz; int * ld_map_phys; scalar_t__* ld_map; int current_map_sz; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct megasas_dcmd_frame dcmd; } ;


 int DCMD_TIMEOUT ;
 int ENOMEM ;
 int ENXIO ;
 int KERN_DEBUG ;
 int MFI_CMD_DCMD ;
 int MFI_FRAME_DIR_READ ;
 int MFI_IO_TIMEOUT_SECS ;
 int MFI_MBOX_SIZE ;
 int MR_DCMD_LD_MAP_GET_INFO ;
 void* cpu_to_le32 (int ) ;
 int dev_printk (int ,int *,char*) ;
 int megaraid_sas_kill_hba (struct megasas_instance*) ;
 struct megasas_cmd* megasas_get_cmd (struct megasas_instance*) ;
 int megasas_issue_blocked_cmd (struct megasas_instance*,struct megasas_cmd*,int ) ;
 int megasas_issue_polled (struct megasas_instance*,struct megasas_cmd*) ;
 int megasas_return_cmd (struct megasas_instance*,struct megasas_cmd*) ;
 int megasas_set_dma_settings (struct megasas_instance*,struct megasas_dcmd_frame*,int ,int ) ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static int
megasas_get_ld_map_info(struct megasas_instance *instance)
{
 int ret = 0;
 struct megasas_cmd *cmd;
 struct megasas_dcmd_frame *dcmd;
 void *ci;
 dma_addr_t ci_h = 0;
 u32 size_map_info;
 struct fusion_context *fusion;

 cmd = megasas_get_cmd(instance);

 if (!cmd) {
  dev_printk(KERN_DEBUG, &instance->pdev->dev, "Failed to get cmd for map info\n");
  return -ENOMEM;
 }

 fusion = instance->ctrl_context;

 if (!fusion) {
  megasas_return_cmd(instance, cmd);
  return -ENXIO;
 }

 dcmd = &cmd->frame->dcmd;

 size_map_info = fusion->current_map_sz;

 ci = (void *) fusion->ld_map[(instance->map_id & 1)];
 ci_h = fusion->ld_map_phys[(instance->map_id & 1)];

 if (!ci) {
  dev_printk(KERN_DEBUG, &instance->pdev->dev, "Failed to alloc mem for ld_map_info\n");
  megasas_return_cmd(instance, cmd);
  return -ENOMEM;
 }

 memset(ci, 0, fusion->max_map_sz);
 memset(dcmd->mbox.b, 0, MFI_MBOX_SIZE);
 dcmd->cmd = MFI_CMD_DCMD;
 dcmd->cmd_status = 0xFF;
 dcmd->sge_count = 1;
 dcmd->flags = MFI_FRAME_DIR_READ;
 dcmd->timeout = 0;
 dcmd->pad_0 = 0;
 dcmd->data_xfer_len = cpu_to_le32(size_map_info);
 dcmd->opcode = cpu_to_le32(MR_DCMD_LD_MAP_GET_INFO);

 megasas_set_dma_settings(instance, dcmd, ci_h, size_map_info);

 if (!instance->mask_interrupts)
  ret = megasas_issue_blocked_cmd(instance, cmd,
   MFI_IO_TIMEOUT_SECS);
 else
  ret = megasas_issue_polled(instance, cmd);

 if (ret == DCMD_TIMEOUT)
  megaraid_sas_kill_hba(instance);

 megasas_return_cmd(instance, cmd);

 return ret;
}
