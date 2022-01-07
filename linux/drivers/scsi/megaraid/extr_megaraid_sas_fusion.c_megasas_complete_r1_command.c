
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {int * ptr; } ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_4__ SCp; } ;
struct megasas_instance {int ldio_outstanding; scalar_t__ ldio_threshold; struct fusion_context* ctrl_context; } ;
struct megasas_cmd_fusion {scalar_t__* sense; int cmd_completed; TYPE_3__* io_request; struct scsi_cmnd* scmd; } ;
struct fusion_context {struct megasas_cmd_fusion** cmd_list; } ;
struct TYPE_5__ {int peer_smid; } ;
struct RAID_CONTEXT_G35 {scalar_t__ status; scalar_t__ ex_status; TYPE_1__ flow_specific; } ;
struct TYPE_6__ {struct RAID_CONTEXT_G35 raid_context_g35; } ;
struct TYPE_7__ {int DataLength; TYPE_2__ RaidContext; } ;


 scalar_t__ MFI_STAT_OK ;
 scalar_t__ READ_WRITE_LDIO ;
 int atomic_dec (int *) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int map_cmd_status (struct fusion_context*,struct scsi_cmnd*,scalar_t__,scalar_t__,int ,scalar_t__*) ;
 scalar_t__ megasas_cmd_type (struct scsi_cmnd*) ;
 int megasas_return_cmd_fusion (struct megasas_instance*,struct megasas_cmd_fusion*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static inline void
megasas_complete_r1_command(struct megasas_instance *instance,
       struct megasas_cmd_fusion *cmd)
{
 u8 *sense, status, ex_status;
 u32 data_length;
 u16 peer_smid;
 struct fusion_context *fusion;
 struct megasas_cmd_fusion *r1_cmd = ((void*)0);
 struct scsi_cmnd *scmd_local = ((void*)0);
 struct RAID_CONTEXT_G35 *rctx_g35;

 rctx_g35 = &cmd->io_request->RaidContext.raid_context_g35;
 fusion = instance->ctrl_context;
 peer_smid = le16_to_cpu(rctx_g35->flow_specific.peer_smid);

 r1_cmd = fusion->cmd_list[peer_smid - 1];
 scmd_local = cmd->scmd;
 status = rctx_g35->status;
 ex_status = rctx_g35->ex_status;
 data_length = cmd->io_request->DataLength;
 sense = cmd->sense;

 cmd->cmd_completed = 1;


 if (r1_cmd->cmd_completed) {
  rctx_g35 = &r1_cmd->io_request->RaidContext.raid_context_g35;
  if (rctx_g35->status != MFI_STAT_OK) {
   status = rctx_g35->status;
   ex_status = rctx_g35->ex_status;
   data_length = r1_cmd->io_request->DataLength;
   sense = r1_cmd->sense;
  }

  megasas_return_cmd_fusion(instance, r1_cmd);
  map_cmd_status(fusion, scmd_local, status, ex_status,
          le32_to_cpu(data_length), sense);
  if (instance->ldio_threshold &&
      megasas_cmd_type(scmd_local) == READ_WRITE_LDIO)
   atomic_dec(&instance->ldio_outstanding);
  scmd_local->SCp.ptr = ((void*)0);
  megasas_return_cmd_fusion(instance, cmd);
  scsi_dma_unmap(scmd_local);
  scmd_local->scsi_done(scmd_local);
 }
}
