
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct TYPE_2__ {int can_queue; } ;


 int scsi_change_queue_depth (struct scsi_device*,int) ;
 TYPE_1__ scsi_driver ;

__attribute__((used)) static int storvsc_change_queue_depth(struct scsi_device *sdev, int queue_depth)
{
 if (queue_depth > scsi_driver.can_queue)
  queue_depth = scsi_driver.can_queue;

 return scsi_change_queue_depth(sdev, queue_depth);
}
