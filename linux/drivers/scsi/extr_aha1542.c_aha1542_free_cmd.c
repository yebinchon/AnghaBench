
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct device {int dummy; } ;
struct chain {int dummy; } ;
struct aha1542_cmd {int * chain; int chain_handle; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {struct device* dma_dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (struct device*,int ,size_t,int ) ;
 int kfree (int *) ;
 struct aha1542_cmd* scsi_cmd_priv (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;

__attribute__((used)) static void aha1542_free_cmd(struct scsi_cmnd *cmd)
{
 struct aha1542_cmd *acmd = scsi_cmd_priv(cmd);
 struct device *dev = cmd->device->host->dma_dev;
 size_t len = scsi_sg_count(cmd) * sizeof(struct chain);

 if (acmd->chain) {
  dma_unmap_single(dev, acmd->chain_handle, len, DMA_TO_DEVICE);
  kfree(acmd->chain);
 }

 acmd->chain = ((void*)0);
 scsi_dma_unmap(cmd);
}
