
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int last_queue_full_time; int last_queue_full_depth; int last_queue_full_count; } ;


 int jiffies ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;

int scsi_track_queue_full(struct scsi_device *sdev, int depth)
{






 if ((jiffies >> 4) == (sdev->last_queue_full_time >> 4))
  return 0;

 sdev->last_queue_full_time = jiffies;
 if (sdev->last_queue_full_depth != depth) {
  sdev->last_queue_full_count = 1;
  sdev->last_queue_full_depth = depth;
 } else {
  sdev->last_queue_full_count++;
 }

 if (sdev->last_queue_full_count <= 10)
  return 0;

 return scsi_change_queue_depth(sdev, depth);
}
