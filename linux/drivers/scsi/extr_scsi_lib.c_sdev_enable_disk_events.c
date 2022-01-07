
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int disk_events_disable_depth; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;

void sdev_enable_disk_events(struct scsi_device *sdev)
{
 if (WARN_ON_ONCE(atomic_read(&sdev->disk_events_disable_depth) <= 0))
  return;
 atomic_dec(&sdev->disk_events_disable_depth);
}
