
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mirror; } ;
struct omapfb_plane_struct {TYPE_1__ info; struct omapfb_device* fbdev; } ;
struct omapfb_device {int dummy; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;


 int EINVAL ;
 scalar_t__ cpu_is_omap15xx () ;
 int ctrl_change_mode (struct fb_info*) ;
 int omapfb_rqueue_lock (struct omapfb_device*) ;
 int omapfb_rqueue_unlock (struct omapfb_device*) ;

__attribute__((used)) static int omapfb_mirror(struct fb_info *fbi, int mirror)
{
 struct omapfb_plane_struct *plane = fbi->par;
 struct omapfb_device *fbdev = plane->fbdev;
 int r = 0;

 omapfb_rqueue_lock(fbdev);
 mirror = mirror ? 1 : 0;
 if (cpu_is_omap15xx())
  r = -EINVAL;
 else if (mirror != plane->info.mirror) {
  plane->info.mirror = mirror;
  r = ctrl_change_mode(fbi);
 }
 omapfb_rqueue_unlock(fbdev);

 return r;
}
