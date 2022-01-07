
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct pmcraid_instance {TYPE_4__* pdev; } ;
struct pmcraid_cmd {scalar_t__ sense_buffer_dma; int * sense_buffer; TYPE_3__* ioa_cb; struct pmcraid_instance* drv_inst; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {int * cdb; } ;
struct TYPE_5__ {int ioasc; } ;
struct TYPE_7__ {TYPE_2__ ioarcb; TYPE_1__ ioasa; } ;


 int DID_ERROR ;
 int DMA_FROM_DEVICE ;
 int KERN_INFO ;
 scalar_t__ PMCRAID_IOASC_SENSE_KEY (int ) ;
 int SCSI_SENSE_BUFFERSIZE ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int le32_to_cpu (int ) ;
 int pmcraid_return_cmd (struct pmcraid_cmd*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ,int ) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void pmcraid_erp_done(struct pmcraid_cmd *cmd)
{
 struct scsi_cmnd *scsi_cmd = cmd->scsi_cmd;
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 u32 ioasc = le32_to_cpu(cmd->ioa_cb->ioasa.ioasc);

 if (PMCRAID_IOASC_SENSE_KEY(ioasc) > 0) {
  scsi_cmd->result |= (DID_ERROR << 16);
  scmd_printk(KERN_INFO, scsi_cmd,
       "command CDB[0] = %x failed with IOASC: 0x%08X\n",
       cmd->ioa_cb->ioarcb.cdb[0], ioasc);
 }

 if (cmd->sense_buffer) {
  dma_unmap_single(&pinstance->pdev->dev, cmd->sense_buffer_dma,
     SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);
  cmd->sense_buffer = ((void*)0);
  cmd->sense_buffer_dma = 0;
 }

 scsi_dma_unmap(scsi_cmd);
 pmcraid_return_cmd(cmd);
 scsi_cmd->scsi_done(scsi_cmd);
}
