
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {int ignore_medium_access_errors; scalar_t__ medium_access_timed_out; scalar_t__ max_medium_access_timeouts; } ;
struct scsi_device {int state_mutex; } ;
struct scsi_cmnd {int result; struct scsi_device* device; TYPE_1__* request; } ;
struct TYPE_2__ {int rq_disk; } ;


 scalar_t__ DID_TIME_OUT ;
 int KERN_ERR ;
 int SDEV_OFFLINE ;
 int SUCCESS ;
 scalar_t__ host_byte (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;
 int scsi_device_online (struct scsi_device*) ;
 int scsi_device_set_state (struct scsi_device*,int ) ;
 struct scsi_disk* scsi_disk (int ) ;
 int scsi_medium_access_command (struct scsi_cmnd*) ;

__attribute__((used)) static int sd_eh_action(struct scsi_cmnd *scmd, int eh_disp)
{
 struct scsi_disk *sdkp = scsi_disk(scmd->request->rq_disk);
 struct scsi_device *sdev = scmd->device;

 if (!scsi_device_online(sdev) ||
     !scsi_medium_access_command(scmd) ||
     host_byte(scmd->result) != DID_TIME_OUT ||
     eh_disp != SUCCESS)
  return eh_disp;
 if (!sdkp->ignore_medium_access_errors) {
  sdkp->medium_access_timed_out++;
  sdkp->ignore_medium_access_errors = 1;
 }






 if (sdkp->medium_access_timed_out >= sdkp->max_medium_access_timeouts) {
  scmd_printk(KERN_ERR, scmd,
       "Medium access timeout failure. Offlining disk!\n");
  mutex_lock(&sdev->state_mutex);
  scsi_device_set_state(sdev, SDEV_OFFLINE);
  mutex_unlock(&sdev->state_mutex);

  return SUCCESS;
 }

 return eh_disp;
}
