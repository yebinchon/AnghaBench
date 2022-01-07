
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uas_dev_info {int flags; } ;
struct scsi_device {int request_queue; struct uas_dev_info* hostdata; TYPE_1__* host; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 int US_FL_MAX_SECTORS_240 ;
 int US_FL_MAX_SECTORS_64 ;
 int blk_queue_max_hw_sectors (int ,int) ;
 int blk_queue_update_dma_alignment (int ,int) ;

__attribute__((used)) static int uas_slave_alloc(struct scsi_device *sdev)
{
 struct uas_dev_info *devinfo =
  (struct uas_dev_info *)sdev->host->hostdata;

 sdev->hostdata = devinfo;






 blk_queue_update_dma_alignment(sdev->request_queue, (512 - 1));

 if (devinfo->flags & US_FL_MAX_SECTORS_64)
  blk_queue_max_hw_sectors(sdev->request_queue, 64);
 else if (devinfo->flags & US_FL_MAX_SECTORS_240)
  blk_queue_max_hw_sectors(sdev->request_queue, 240);

 return 0;
}
