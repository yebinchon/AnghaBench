
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb_update_window {scalar_t__ format; int out_height; int out_width; scalar_t__ out_y; scalar_t__ out_x; int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct omapfb_plane_struct {struct omapfb_device* fbdev; } ;
struct omapfb_device {TYPE_2__* ctrl; } ;
struct TYPE_3__ {int yres; int xres; } ;
struct fb_info {TYPE_1__ var; struct omapfb_plane_struct* par; } ;
struct TYPE_4__ {int (* update_window ) (struct fb_info*,struct omapfb_update_window*,int *,int *) ;scalar_t__ (* get_update_mode ) () ;} ;


 int ENODEV ;
 scalar_t__ OMAPFB_MANUAL_UPDATE ;
 int omapfb_rqueue_lock (struct omapfb_device*) ;
 int omapfb_rqueue_unlock (struct omapfb_device*) ;
 scalar_t__ stub1 () ;
 int stub2 (struct fb_info*,struct omapfb_update_window*,int *,int *) ;

__attribute__((used)) static int omapfb_update_full_screen(struct fb_info *fbi)
{
 struct omapfb_plane_struct *plane = fbi->par;
 struct omapfb_device *fbdev = plane->fbdev;
 struct omapfb_update_window win;
 int r;

 if (!fbdev->ctrl->update_window ||
     fbdev->ctrl->get_update_mode() != OMAPFB_MANUAL_UPDATE)
  return -ENODEV;

 win.x = 0;
 win.y = 0;
 win.width = fbi->var.xres;
 win.height = fbi->var.yres;
 win.out_x = 0;
 win.out_y = 0;
 win.out_width = fbi->var.xres;
 win.out_height = fbi->var.yres;
 win.format = 0;

 omapfb_rqueue_lock(fbdev);
 r = fbdev->ctrl->update_window(fbi, &win, ((void*)0), ((void*)0));
 omapfb_rqueue_unlock(fbdev);

 return r;
}
