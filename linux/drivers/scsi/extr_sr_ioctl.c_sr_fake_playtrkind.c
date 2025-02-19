
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packet_command {int timeout; int data_direction; int * cmd; } ;
struct cdrom_tochdr {int cdth_trk1; int cdth_trk0; } ;
struct TYPE_3__ {int frame; int second; int minute; } ;
struct TYPE_4__ {TYPE_1__ msf; } ;
struct cdrom_tocentry {int cdte_track; TYPE_2__ cdte_addr; void* cdte_format; } ;
struct cdrom_ti {int cdti_trk1; int cdti_trk0; } ;
struct cdrom_device_info {int handle; } ;


 int CDROM_LEADOUT ;
 void* CDROM_MSF ;
 int DMA_NONE ;
 int GPCMD_PLAY_AUDIO_MSF ;
 int IOCTL_TIMEOUT ;
 int memset (struct packet_command*,int ,int) ;
 int sr_do_ioctl (int ,struct packet_command*) ;
 int sr_read_tocentry (struct cdrom_device_info*,struct cdrom_tocentry*) ;
 int sr_read_tochdr (struct cdrom_device_info*,struct cdrom_tochdr*) ;

__attribute__((used)) static int sr_fake_playtrkind(struct cdrom_device_info *cdi, struct cdrom_ti *ti)
{
 struct cdrom_tocentry trk0_te, trk1_te;
 struct cdrom_tochdr tochdr;
 struct packet_command cgc;
 int ntracks, ret;

 ret = sr_read_tochdr(cdi, &tochdr);
 if (ret)
  return ret;

 ntracks = tochdr.cdth_trk1 - tochdr.cdth_trk0 + 1;

 if (ti->cdti_trk1 == ntracks)
  ti->cdti_trk1 = CDROM_LEADOUT;
 else if (ti->cdti_trk1 != CDROM_LEADOUT)
  ti->cdti_trk1 ++;

 trk0_te.cdte_track = ti->cdti_trk0;
 trk0_te.cdte_format = CDROM_MSF;
 trk1_te.cdte_track = ti->cdti_trk1;
 trk1_te.cdte_format = CDROM_MSF;

 ret = sr_read_tocentry(cdi, &trk0_te);
 if (ret)
  return ret;
 ret = sr_read_tocentry(cdi, &trk1_te);
 if (ret)
  return ret;

 memset(&cgc, 0, sizeof(struct packet_command));
 cgc.cmd[0] = GPCMD_PLAY_AUDIO_MSF;
 cgc.cmd[3] = trk0_te.cdte_addr.msf.minute;
 cgc.cmd[4] = trk0_te.cdte_addr.msf.second;
 cgc.cmd[5] = trk0_te.cdte_addr.msf.frame;
 cgc.cmd[6] = trk1_te.cdte_addr.msf.minute;
 cgc.cmd[7] = trk1_te.cdte_addr.msf.second;
 cgc.cmd[8] = trk1_te.cdte_addr.msf.frame;
 cgc.data_direction = DMA_NONE;
 cgc.timeout = IOCTL_TIMEOUT;
 return sr_do_ioctl(cdi->handle, &cgc);
}
