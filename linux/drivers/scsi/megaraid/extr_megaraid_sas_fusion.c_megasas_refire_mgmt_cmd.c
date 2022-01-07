
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union MEGASAS_REQUEST_DESCRIPTOR_UNION {int dummy; } MEGASAS_REQUEST_DESCRIPTOR_UNION ;
typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct megasas_instance {int max_scsi_cmds; int max_fw_cmds; int support_pci_lane_margining; int support_nvme_passthru; struct megasas_cmd** cmd_list; struct fusion_context* ctrl_context; } ;
struct megasas_cmd_fusion {size_t sync_cmd_idx; } ;
struct TYPE_5__ {int smid; } ;
struct megasas_cmd {int flags; TYPE_4__* frame; TYPE_1__ context; } ;
struct fusion_context {struct megasas_cmd_fusion** cmd_list; } ;
struct TYPE_7__ {int cmd; void* cmd_status; } ;
struct TYPE_6__ {int cmd_status; int opcode; } ;
struct TYPE_8__ {TYPE_3__ hdr; TYPE_2__ dcmd; } ;



 int DID_OK ;
 int DRV_DCMD_SKIP_REFIRE ;



 void* MFI_STAT_INVALID_CMD ;
 int MFI_STAT_OK ;
 int MR_DCMD_CTRL_SHUTDOWN ;
 int MR_DCMD_LD_MAP_GET_INFO ;
 int MR_DCMD_SYSTEM_PD_MAP_GET_INFO ;


 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int megasas_complete_cmd (struct megasas_instance*,struct megasas_cmd*,int ) ;
 int megasas_fire_cmd_fusion (struct megasas_instance*,union MEGASAS_REQUEST_DESCRIPTOR_UNION*) ;
 union MEGASAS_REQUEST_DESCRIPTOR_UNION* megasas_get_request_descriptor (struct megasas_instance*,scalar_t__) ;
 int megasas_return_cmd (struct megasas_instance*,struct megasas_cmd*) ;

__attribute__((used)) static void megasas_refire_mgmt_cmd(struct megasas_instance *instance)
{
 int j;
 struct megasas_cmd_fusion *cmd_fusion;
 struct fusion_context *fusion;
 struct megasas_cmd *cmd_mfi;
 union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc;
 u16 smid;
 bool refire_cmd = 0;
 u8 result;
 u32 opcode = 0;

 fusion = instance->ctrl_context;




 for (j = instance->max_scsi_cmds ; j < instance->max_fw_cmds; j++) {
  cmd_fusion = fusion->cmd_list[j];
  cmd_mfi = instance->cmd_list[cmd_fusion->sync_cmd_idx];
  smid = le16_to_cpu(cmd_mfi->context.smid);
  result = 129;

  if (!smid)
   continue;

  req_desc = megasas_get_request_descriptor(instance, smid - 1);

  switch (cmd_mfi->frame->hdr.cmd) {
  case 132:
   opcode = le32_to_cpu(cmd_mfi->frame->dcmd.opcode);

   if (opcode == MR_DCMD_CTRL_SHUTDOWN) {
    cmd_mfi->frame->dcmd.cmd_status = MFI_STAT_OK;
    result = 133;
    break;
   }

   refire_cmd = ((opcode != MR_DCMD_LD_MAP_GET_INFO)) &&
          (opcode != MR_DCMD_SYSTEM_PD_MAP_GET_INFO) &&
          !(cmd_mfi->flags & DRV_DCMD_SKIP_REFIRE);

   if (!refire_cmd)
    result = 128;

   break;
  case 131:
   if (!instance->support_nvme_passthru) {
    cmd_mfi->frame->hdr.cmd_status = MFI_STAT_INVALID_CMD;
    result = 133;
   }

   break;
  case 130:
   if (!instance->support_pci_lane_margining) {
    cmd_mfi->frame->hdr.cmd_status = MFI_STAT_INVALID_CMD;
    result = 133;
   }

   break;
  default:
   break;
  }

  switch (result) {
  case 129:
   megasas_fire_cmd_fusion(instance, req_desc);
   break;
  case 128:
   megasas_return_cmd(instance, cmd_mfi);
   break;
  case 133:
   megasas_complete_cmd(instance, cmd_mfi, DID_OK);
   break;
  }
 }
}
