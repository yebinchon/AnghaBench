
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {scalar_t__ scsi_level; TYPE_1__* sdev_target; int request_queue; } ;
struct TYPE_2__ {scalar_t__ scsi_level; } ;


 scalar_t__ SCSI_2 ;
 int blk_queue_dma_alignment (int ,int) ;

__attribute__((used)) static int slave_configure(struct scsi_device *sdev)
{
 blk_queue_dma_alignment(sdev->request_queue, (512 - 1));
 if (sdev->scsi_level < SCSI_2) {
  sdev->scsi_level = SCSI_2;
  sdev->sdev_target->scsi_level = SCSI_2;
 }

 return 0;
}
