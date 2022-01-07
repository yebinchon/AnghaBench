
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_sync_arg {int front_porch; int pulse_width; int back_porch; } ;
struct fb_info {int dummy; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOTTY ;
 int copy_from_user (struct lcd_sync_arg*,char*,int) ;
 int fb_wait_for_vsync (struct fb_info*) ;
 int lcd_cfg_horizontal_sync (int ,int ,int ) ;
 int lcd_cfg_vertical_sync (int ,int ,int ) ;

__attribute__((used)) static int fb_ioctl(struct fb_info *info, unsigned int cmd,
     unsigned long arg)
{
 struct lcd_sync_arg sync_arg;

 switch (cmd) {
 case 134:
 case 133:
 case 136:
 case 131:
 case 135:
 case 130:
  return -ENOTTY;
 case 129:
  if (copy_from_user(&sync_arg, (char *)arg,
    sizeof(struct lcd_sync_arg)))
   return -EFAULT;
  lcd_cfg_horizontal_sync(sync_arg.back_porch,
     sync_arg.pulse_width,
     sync_arg.front_porch);
  break;
 case 128:
  if (copy_from_user(&sync_arg, (char *)arg,
    sizeof(struct lcd_sync_arg)))
   return -EFAULT;
  lcd_cfg_vertical_sync(sync_arg.back_porch,
     sync_arg.pulse_width,
     sync_arg.front_porch);
  break;
 case 132:
  return fb_wait_for_vsync(info);
 default:
  return -EINVAL;
 }
 return 0;
}
