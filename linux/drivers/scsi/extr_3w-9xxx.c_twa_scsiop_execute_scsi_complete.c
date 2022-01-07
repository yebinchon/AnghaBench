
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {scalar_t__ sc_data_direction; } ;
struct TYPE_3__ {void** generic_buffer_virt; struct scsi_cmnd** srb; } ;
typedef TYPE_1__ TW_Device_Extension ;


 scalar_t__ DMA_BIDIRECTIONAL ;
 scalar_t__ DMA_FROM_DEVICE ;
 int TW_SECTOR_SIZE ;
 int scsi_sg_copy_from_buffer (struct scsi_cmnd*,void*,int ) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int twa_command_mapped (struct scsi_cmnd*) ;

__attribute__((used)) static void twa_scsiop_execute_scsi_complete(TW_Device_Extension *tw_dev, int request_id)
{
 struct scsi_cmnd *cmd = tw_dev->srb[request_id];

 if (!twa_command_mapped(cmd) &&
     (cmd->sc_data_direction == DMA_FROM_DEVICE ||
      cmd->sc_data_direction == DMA_BIDIRECTIONAL)) {
  if (scsi_sg_count(cmd) == 1) {
   void *buf = tw_dev->generic_buffer_virt[request_id];

   scsi_sg_copy_from_buffer(cmd, buf, TW_SECTOR_SIZE);
  }
 }
}
