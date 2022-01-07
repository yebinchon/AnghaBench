
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct workqueue_struct {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct omapfb_display_data {int auto_update_work_enabled; TYPE_1__ auto_update_work; } ;
struct omapfb2_device {struct workqueue_struct* auto_update_wq; int dev; } ;
struct omap_dss_device {int dummy; } ;


 int INIT_DELAYED_WORK (TYPE_1__*,int (*) (int *)) ;
 struct workqueue_struct* create_singlethread_workqueue (char*) ;
 int dev_err (int ,char*) ;
 struct omapfb_display_data* get_display_data (struct omapfb2_device*,struct omap_dss_device*) ;
 int omapfb_auto_update_work (int *) ;

void omapfb_start_auto_update(struct omapfb2_device *fbdev,
  struct omap_dss_device *display)
{
 struct omapfb_display_data *d;

 if (fbdev->auto_update_wq == ((void*)0)) {
  struct workqueue_struct *wq;

  wq = create_singlethread_workqueue("omapfb_auto_update");

  if (wq == ((void*)0)) {
   dev_err(fbdev->dev, "Failed to create workqueue for "
     "auto-update\n");
   return;
  }

  fbdev->auto_update_wq = wq;
 }

 d = get_display_data(fbdev, display);

 INIT_DELAYED_WORK(&d->auto_update_work, omapfb_auto_update_work);

 d->auto_update_work_enabled = 1;

 omapfb_auto_update_work(&d->auto_update_work.work);
}
