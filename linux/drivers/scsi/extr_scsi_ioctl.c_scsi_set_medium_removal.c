
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int locked; int lockable; int removable; } ;


 char ALLOW_MEDIUM_REMOVAL ;
 int IOCTL_NORMAL_TIMEOUT ;
 int MAX_COMMAND_SIZE ;
 int NORMAL_RETRIES ;
 char SCSI_REMOVAL_PREVENT ;
 int ioctl_internal_command (struct scsi_device*,char*,int ,int ) ;

int scsi_set_medium_removal(struct scsi_device *sdev, char state)
{
 char scsi_cmd[MAX_COMMAND_SIZE];
 int ret;

 if (!sdev->removable || !sdev->lockable)
        return 0;

 scsi_cmd[0] = ALLOW_MEDIUM_REMOVAL;
 scsi_cmd[1] = 0;
 scsi_cmd[2] = 0;
 scsi_cmd[3] = 0;
 scsi_cmd[4] = state;
 scsi_cmd[5] = 0;

 ret = ioctl_internal_command(sdev, scsi_cmd,
   IOCTL_NORMAL_TIMEOUT, NORMAL_RETRIES);
 if (ret == 0)
  sdev->locked = (state == SCSI_REMOVAL_PREVENT);
 return ret;
}
