
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int max_target_blocked; int target_blocked; } ;
struct scsi_device {int max_device_blocked; int device_blocked; struct Scsi_Host* host; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct Scsi_Host {int max_host_blocked; int host_blocked; } ;






 int atomic_set (int *,int ) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;

__attribute__((used)) static void
scsi_set_blocked(struct scsi_cmnd *cmd, int reason)
{
 struct Scsi_Host *host = cmd->device->host;
 struct scsi_device *device = cmd->device;
 struct scsi_target *starget = scsi_target(device);
 switch (reason) {
 case 129:
  atomic_set(&host->host_blocked, host->max_host_blocked);
  break;
 case 131:
 case 130:
  atomic_set(&device->device_blocked,
      device->max_device_blocked);
  break;
 case 128:
  atomic_set(&starget->target_blocked,
      starget->max_target_blocked);
  break;
 }
}
