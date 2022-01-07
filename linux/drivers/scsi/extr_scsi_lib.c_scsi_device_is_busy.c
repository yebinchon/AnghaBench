
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ queue_depth; int device_blocked; int device_busy; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool scsi_device_is_busy(struct scsi_device *sdev)
{
 if (atomic_read(&sdev->device_busy) >= sdev->queue_depth)
  return 1;
 if (atomic_read(&sdev->device_blocked) > 0)
  return 1;
 return 0;
}
