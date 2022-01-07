
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int disk_events_disable_depth; } ;


 int atomic_inc (int *) ;

void sdev_disable_disk_events(struct scsi_device *sdev)
{
 atomic_inc(&sdev->disk_events_disable_depth);
}
