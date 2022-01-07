
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_chan {int dummy; } ;
struct fb_info {struct sh_mobile_lcdc_chan* par; } ;


 int ENOIOCTLCMD ;

 int sh_mobile_lcdc_wait_for_vsync (struct sh_mobile_lcdc_chan*) ;

__attribute__((used)) static int sh_mobile_lcdc_ioctl(struct fb_info *info, unsigned int cmd,
    unsigned long arg)
{
 struct sh_mobile_lcdc_chan *ch = info->par;
 int retval;

 switch (cmd) {
 case 128:
  retval = sh_mobile_lcdc_wait_for_vsync(ch);
  break;

 default:
  retval = -ENOIOCTLCMD;
  break;
 }
 return retval;
}
