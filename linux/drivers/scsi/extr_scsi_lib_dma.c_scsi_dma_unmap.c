
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int sc_data_direction; TYPE_2__* device; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {struct device* dma_dev; } ;


 int dma_unmap_sg (struct device*,int ,scalar_t__,int ) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;

void scsi_dma_unmap(struct scsi_cmnd *cmd)
{
 if (scsi_sg_count(cmd)) {
  struct device *dev = cmd->device->host->dma_dev;

  dma_unmap_sg(dev, scsi_sglist(cmd), scsi_sg_count(cmd),
        cmd->sc_data_direction);
 }
}
