
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* unregister_backlight ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_1__ fbtftops; } ;
struct fb_info {struct fbtft_par* par; } ;


 int fbtft_sysfs_exit (struct fbtft_par*) ;
 int stub1 (struct fbtft_par*) ;
 int unregister_framebuffer (struct fb_info*) ;

int fbtft_unregister_framebuffer(struct fb_info *fb_info)
{
 struct fbtft_par *par = fb_info->par;

 if (par->fbtftops.unregister_backlight)
  par->fbtftops.unregister_backlight(par);
 fbtft_sysfs_exit(par);
 unregister_framebuffer(fb_info);

 return 0;
}
