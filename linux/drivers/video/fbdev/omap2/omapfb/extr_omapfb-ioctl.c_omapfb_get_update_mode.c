
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_info {struct omapfb2_device* fbdev; } ;
struct omapfb_display_data {int update_mode; } ;
struct omapfb2_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct fb_info {int dummy; } ;
typedef enum omapfb_update_mode { ____Placeholder_omapfb_update_mode } omapfb_update_mode ;


 int EINVAL ;
 struct omapfb_info* FB2OFB (struct fb_info*) ;
 struct omap_dss_device* fb2display (struct fb_info*) ;
 struct omapfb_display_data* get_display_data (struct omapfb2_device*,struct omap_dss_device*) ;
 int omapfb_lock (struct omapfb2_device*) ;
 int omapfb_unlock (struct omapfb2_device*) ;

int omapfb_get_update_mode(struct fb_info *fbi,
  enum omapfb_update_mode *mode)
{
 struct omap_dss_device *display = fb2display(fbi);
 struct omapfb_info *ofbi = FB2OFB(fbi);
 struct omapfb2_device *fbdev = ofbi->fbdev;
 struct omapfb_display_data *d;

 if (!display)
  return -EINVAL;

 omapfb_lock(fbdev);

 d = get_display_data(fbdev, display);

 *mode = d->update_mode;

 omapfb_unlock(fbdev);

 return 0;
}
