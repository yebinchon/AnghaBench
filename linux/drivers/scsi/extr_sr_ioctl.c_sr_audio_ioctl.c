
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int dummy; } ;





 int EINVAL ;
 int sr_play_trkind (struct cdrom_device_info*,void*) ;
 int sr_read_tocentry (struct cdrom_device_info*,void*) ;
 int sr_read_tochdr (struct cdrom_device_info*,void*) ;

int sr_audio_ioctl(struct cdrom_device_info *cdi, unsigned int cmd, void *arg)
{
 switch (cmd) {
 case 128:
  return sr_read_tochdr(cdi, arg);
 case 129:
  return sr_read_tocentry(cdi, arg);
 case 130:
  return sr_play_trkind(cdi, arg);
 default:
  return -EINVAL;
 }
}
