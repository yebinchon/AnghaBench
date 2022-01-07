
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {scalar_t__ can_queue; int target_busy; } ;
struct scsi_device {int device_busy; struct Scsi_Host* host; } ;
struct Scsi_Host {int dummy; } ;


 int atomic_dec (int *) ;
 int scsi_dec_host_busy (struct Scsi_Host*) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;

void scsi_device_unbusy(struct scsi_device *sdev)
{
 struct Scsi_Host *shost = sdev->host;
 struct scsi_target *starget = scsi_target(sdev);

 scsi_dec_host_busy(shost);

 if (starget->can_queue > 0)
  atomic_dec(&starget->target_busy);

 atomic_dec(&sdev->device_busy);
}
