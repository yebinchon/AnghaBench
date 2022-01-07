
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_info {struct omapfb2_device* fbdev; } ;
struct omapfb_display_data {int auto_update_work_enabled; int update_mode; } ;
struct omapfb2_device {int dummy; } ;
struct omap_dss_device {int caps; TYPE_1__* driver; int state; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {int (* enable ) (struct omap_dss_device*) ;int (* disable ) (struct omap_dss_device*) ;} ;


 int EINVAL ;
 struct omapfb_info* FB2OFB (struct fb_info*) ;





 int OMAPFB_AUTO_UPDATE ;
 int OMAP_DSS_DISPLAY_ACTIVE ;
 int OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE ;
 struct omap_dss_device* fb2display (struct fb_info*) ;
 struct omapfb_display_data* get_display_data (struct omapfb2_device*,struct omap_dss_device*) ;
 int omapfb_lock (struct omapfb2_device*) ;
 int omapfb_start_auto_update (struct omapfb2_device*,struct omap_dss_device*) ;
 int omapfb_stop_auto_update (struct omapfb2_device*,struct omap_dss_device*) ;
 int omapfb_unlock (struct omapfb2_device*) ;
 int stub1 (struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*) ;

__attribute__((used)) static int omapfb_blank(int blank, struct fb_info *fbi)
{
 struct omapfb_info *ofbi = FB2OFB(fbi);
 struct omapfb2_device *fbdev = ofbi->fbdev;
 struct omap_dss_device *display = fb2display(fbi);
 struct omapfb_display_data *d;
 int r = 0;

 if (!display)
  return -EINVAL;

 omapfb_lock(fbdev);

 d = get_display_data(fbdev, display);

 switch (blank) {
 case 129:
  if (display->state == OMAP_DSS_DISPLAY_ACTIVE)
   goto exit;

  r = display->driver->enable(display);

  if ((display->caps & OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE) &&
    d->update_mode == OMAPFB_AUTO_UPDATE &&
    !d->auto_update_work_enabled)
   omapfb_start_auto_update(fbdev, display);

  break;

 case 131:


 case 128:
 case 132:
 case 130:
  if (display->state != OMAP_DSS_DISPLAY_ACTIVE)
   goto exit;

  if (d->auto_update_work_enabled)
   omapfb_stop_auto_update(fbdev, display);

  display->driver->disable(display);

  break;

 default:
  r = -EINVAL;
 }

exit:
 omapfb_unlock(fbdev);

 return r;
}
