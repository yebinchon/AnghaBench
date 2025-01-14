
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct megasas_instance {int max_fw_cmds; int max_mpt_cmds; int max_scsi_cmds; TYPE_1__* pdev; scalar_t__ is_rdpq; struct fusion_context* ctrl_context; } ;
struct megasas_cmd_fusion {int index; int sync_cmd_idx; int r1_alt_dev_handle; scalar_t__ io_request_phys_addr; struct megasas_cmd_fusion* io_request; struct megasas_instance* instance; int * scmd; } ;
struct fusion_context {struct megasas_cmd_fusion** cmd_list; scalar_t__ io_request_frames_phys; int * io_request_frames; } ;
struct MPI2_RAID_SCSI_IO_REQUEST {int index; int sync_cmd_idx; int r1_alt_dev_handle; scalar_t__ io_request_phys_addr; struct MPI2_RAID_SCSI_IO_REQUEST* io_request; struct megasas_instance* instance; int * scmd; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE ;
 int MR_DEVHANDLE_INVALID ;
 scalar_t__ ULONG_MAX ;
 int dev_info (int *,char*,int) ;
 scalar_t__ megasas_alloc_cmdlist_fusion (struct megasas_instance*) ;
 scalar_t__ megasas_alloc_rdpq_fusion (struct megasas_instance*) ;
 scalar_t__ megasas_alloc_reply_fusion (struct megasas_instance*) ;
 scalar_t__ megasas_alloc_request_fusion (struct megasas_instance*) ;
 scalar_t__ megasas_create_sg_sense_fusion (struct megasas_instance*) ;
 int megasas_free_cmds_fusion (struct megasas_instance*) ;
 int memset (struct megasas_cmd_fusion*,int ,int) ;

__attribute__((used)) static int
megasas_alloc_cmds_fusion(struct megasas_instance *instance)
{
 int i;
 struct fusion_context *fusion;
 struct megasas_cmd_fusion *cmd;
 u32 offset;
 dma_addr_t io_req_base_phys;
 u8 *io_req_base;


 fusion = instance->ctrl_context;

 if (megasas_alloc_request_fusion(instance))
  goto fail_exit;

 if (instance->is_rdpq) {
  if (megasas_alloc_rdpq_fusion(instance))
   goto fail_exit;
 } else
  if (megasas_alloc_reply_fusion(instance))
   goto fail_exit;

 if (megasas_alloc_cmdlist_fusion(instance))
  goto fail_exit;

 dev_info(&instance->pdev->dev, "Configured max firmware commands: %d\n",
   instance->max_fw_cmds);


 io_req_base = fusion->io_request_frames + MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE;
 io_req_base_phys = fusion->io_request_frames_phys + MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE;






 for (i = 0; i < instance->max_mpt_cmds; i++) {
  cmd = fusion->cmd_list[i];
  offset = MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE * i;
  memset(cmd, 0, sizeof(struct megasas_cmd_fusion));
  cmd->index = i + 1;
  cmd->scmd = ((void*)0);
  cmd->sync_cmd_idx =
  (i >= instance->max_scsi_cmds && i < instance->max_fw_cmds) ?
    (i - instance->max_scsi_cmds) :
    (u32)ULONG_MAX;
  cmd->instance = instance;
  cmd->io_request =
   (struct MPI2_RAID_SCSI_IO_REQUEST *)
    (io_req_base + offset);
  memset(cmd->io_request, 0,
         sizeof(struct MPI2_RAID_SCSI_IO_REQUEST));
  cmd->io_request_phys_addr = io_req_base_phys + offset;
  cmd->r1_alt_dev_handle = MR_DEVHANDLE_INVALID;
 }

 if (megasas_create_sg_sense_fusion(instance))
  goto fail_exit;

 return 0;

fail_exit:
 megasas_free_cmds_fusion(instance);
 return -ENOMEM;
}
