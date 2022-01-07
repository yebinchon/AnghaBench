
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {TYPE_1__* host; } ;
struct TYPE_2__ {int host_wait; } ;


 int scsi_device_online (struct scsi_device*) ;
 int scsi_host_in_recovery (TYPE_1__*) ;
 int wait_event (int ,int) ;

int scsi_block_when_processing_errors(struct scsi_device *sdev)
{
 int online;

 wait_event(sdev->host->host_wait, !scsi_host_in_recovery(sdev->host));

 online = scsi_device_online(sdev);

 return online;
}
