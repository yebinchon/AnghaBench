
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_plane_struct {struct omapfb_device* fbdev; } ;
struct omapfb_device {TYPE_1__* ctrl; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;
struct TYPE_2__ {int (* sync ) () ;} ;


 int omapfb_rqueue_lock (struct omapfb_device*) ;
 int omapfb_rqueue_unlock (struct omapfb_device*) ;
 int set_fb_var (struct fb_info*,struct fb_var_screeninfo*) ;
 int stub1 () ;

__attribute__((used)) static int omapfb_check_var(struct fb_var_screeninfo *var, struct fb_info *fbi)
{
 struct omapfb_plane_struct *plane = fbi->par;
 struct omapfb_device *fbdev = plane->fbdev;
 int r;

 omapfb_rqueue_lock(fbdev);
 if (fbdev->ctrl->sync != ((void*)0))
  fbdev->ctrl->sync();
 r = set_fb_var(fbi, var);
 omapfb_rqueue_unlock(fbdev);

 return r;
}
