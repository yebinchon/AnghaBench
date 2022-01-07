
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ no_read_disc_info; } ;
struct scsi_cd {struct scsi_device* device; } ;
struct packet_command {scalar_t__* cmd; scalar_t__ timeout; int stat; } ;
struct cdrom_device_info {struct scsi_cd* handle; } ;


 int EDRIVE_CANT_DO_THIS ;
 scalar_t__ GPCMD_READ_DISC_INFO ;
 scalar_t__ IOCTL_TIMEOUT ;
 int sr_do_ioctl (struct scsi_cd*,struct packet_command*) ;

__attribute__((used)) static int sr_packet(struct cdrom_device_info *cdi,
  struct packet_command *cgc)
{
 struct scsi_cd *cd = cdi->handle;
 struct scsi_device *sdev = cd->device;

 if (cgc->cmd[0] == GPCMD_READ_DISC_INFO && sdev->no_read_disc_info)
  return -EDRIVE_CANT_DO_THIS;

 if (cgc->timeout <= 0)
  cgc->timeout = IOCTL_TIMEOUT;

 sr_do_ioctl(cd, cgc);

 return cgc->stat;
}
