
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omapfb_plane_struct {struct omapfb_device* fbdev; } ;
struct omapfb_device {int state; TYPE_1__* ctrl; TYPE_2__* panel; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;
struct TYPE_5__ {int (* disable ) (TYPE_2__*) ;int (* enable ) (TYPE_2__*) ;} ;
struct TYPE_4__ {int (* suspend ) () ;int (* get_update_mode ) () ;int (* resume ) () ;} ;


 int EINVAL ;


 int OMAPFB_ACTIVE ;
 int OMAPFB_MANUAL_UPDATE ;
 int OMAPFB_SUSPENDED ;
 int omapfb_rqueue_lock (struct omapfb_device*) ;
 int omapfb_rqueue_unlock (struct omapfb_device*) ;
 int omapfb_update_full_screen (struct fb_info*) ;
 int stub1 () ;
 int stub2 (TYPE_2__*) ;
 int stub3 () ;
 int stub4 (TYPE_2__*) ;
 int stub5 () ;

__attribute__((used)) static int omapfb_blank(int blank, struct fb_info *fbi)
{
 struct omapfb_plane_struct *plane = fbi->par;
 struct omapfb_device *fbdev = plane->fbdev;
 int do_update = 0;
 int r = 0;

 omapfb_rqueue_lock(fbdev);
 switch (blank) {
 case 128:
  if (fbdev->state == OMAPFB_SUSPENDED) {
   if (fbdev->ctrl->resume)
    fbdev->ctrl->resume();
   if (fbdev->panel->enable)
    fbdev->panel->enable(fbdev->panel);
   fbdev->state = OMAPFB_ACTIVE;
   if (fbdev->ctrl->get_update_mode() ==
     OMAPFB_MANUAL_UPDATE)
    do_update = 1;
  }
  break;
 case 129:
  if (fbdev->state == OMAPFB_ACTIVE) {
   if (fbdev->panel->disable)
    fbdev->panel->disable(fbdev->panel);
   if (fbdev->ctrl->suspend)
    fbdev->ctrl->suspend();
   fbdev->state = OMAPFB_SUSPENDED;
  }
  break;
 default:
  r = -EINVAL;
 }
 omapfb_rqueue_unlock(fbdev);

 if (r == 0 && do_update)
  r = omapfb_update_full_screen(fbi);

 return r;
}
