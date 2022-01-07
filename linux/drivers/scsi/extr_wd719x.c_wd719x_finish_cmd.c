
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wd719x_scb {int phys; int list; struct scsi_cmnd* cmd; } ;
struct wd719x {TYPE_1__* pdev; } ;
struct TYPE_5__ {int dma_handle; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__ SCp; TYPE_3__* device; } ;
struct TYPE_6__ {int host; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int SCSI_SENSE_BUFFERSIZE ;
 int dma_unmap_single (int *,int ,int,int ) ;
 int list_del (int *) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 struct wd719x* shost_priv (int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void wd719x_finish_cmd(struct wd719x_scb *scb, int result)
{
 struct scsi_cmnd *cmd = scb->cmd;
 struct wd719x *wd = shost_priv(cmd->device->host);

 list_del(&scb->list);

 dma_unmap_single(&wd->pdev->dev, scb->phys,
   sizeof(struct wd719x_scb), DMA_BIDIRECTIONAL);
 scsi_dma_unmap(cmd);
 dma_unmap_single(&wd->pdev->dev, cmd->SCp.dma_handle,
    SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);

 cmd->result = result << 16;
 cmd->scsi_done(cmd);
}
