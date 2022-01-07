
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_depth; scalar_t__ request_queue; } ;


 int blk_set_queue_depth (scalar_t__,int) ;
 int wmb () ;

int scsi_change_queue_depth(struct scsi_device *sdev, int depth)
{
 if (depth > 0) {
  sdev->queue_depth = depth;
  wmb();
 }

 if (sdev->request_queue)
  blk_set_queue_depth(sdev->request_queue, depth);

 return sdev->queue_depth;
}
