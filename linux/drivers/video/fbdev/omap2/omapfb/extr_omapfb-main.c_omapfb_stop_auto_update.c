
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_display_data {int auto_update_work_enabled; int auto_update_work; } ;
struct omapfb2_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct omapfb_display_data* get_display_data (struct omapfb2_device*,struct omap_dss_device*) ;

void omapfb_stop_auto_update(struct omapfb2_device *fbdev,
  struct omap_dss_device *display)
{
 struct omapfb_display_data *d;

 d = get_display_data(fbdev, display);

 cancel_delayed_work_sync(&d->auto_update_work);

 d->auto_update_work_enabled = 0;
}
