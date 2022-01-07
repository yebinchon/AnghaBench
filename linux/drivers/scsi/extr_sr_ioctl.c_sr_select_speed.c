
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {int* cmd; int timeout; int data_direction; } ;
struct cdrom_device_info {int * handle; } ;
typedef int Scsi_CD ;


 int DMA_NONE ;
 int EIO ;
 int GPCMD_SET_SPEED ;
 int IOCTL_TIMEOUT ;
 int memset (struct packet_command*,int ,int) ;
 scalar_t__ sr_do_ioctl (int *,struct packet_command*) ;

int sr_select_speed(struct cdrom_device_info *cdi, int speed)
{
 Scsi_CD *cd = cdi->handle;
 struct packet_command cgc;

 if (speed == 0)
  speed = 0xffff;
 else
  speed *= 177;

 memset(&cgc, 0, sizeof(struct packet_command));
 cgc.cmd[0] = GPCMD_SET_SPEED;
 cgc.cmd[2] = (speed >> 8) & 0xff;
 cgc.cmd[3] = speed & 0xff;
 cgc.data_direction = DMA_NONE;
 cgc.timeout = IOCTL_TIMEOUT;

 if (sr_do_ioctl(cd, &cgc))
  return -EIO;
 return 0;
}
