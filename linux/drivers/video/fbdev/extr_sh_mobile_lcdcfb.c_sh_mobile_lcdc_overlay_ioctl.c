
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_overlay {int channel; } ;
struct fb_info {struct sh_mobile_lcdc_overlay* par; } ;


 int ENOIOCTLCMD ;

 int sh_mobile_lcdc_wait_for_vsync (int ) ;

__attribute__((used)) static int sh_mobile_lcdc_overlay_ioctl(struct fb_info *info, unsigned int cmd,
          unsigned long arg)
{
 struct sh_mobile_lcdc_overlay *ovl = info->par;

 switch (cmd) {
 case 128:
  return sh_mobile_lcdc_wait_for_vsync(ovl->channel);

 default:
  return -ENOIOCTLCMD;
 }
}
