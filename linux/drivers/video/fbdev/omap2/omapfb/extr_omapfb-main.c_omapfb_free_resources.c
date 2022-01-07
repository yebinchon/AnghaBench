
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb2_device {int num_overlays; int num_fbs; int num_displays; int dev; int * auto_update_wq; TYPE_1__* displays; int * fbs; struct omap_overlay** overlays; } ;
struct omap_overlay {int (* unset_manager ) (struct omap_overlay*) ;scalar_t__ manager; int (* disable ) (struct omap_overlay*) ;} ;
struct omap_dss_device {scalar_t__ state; TYPE_2__* driver; } ;
struct TYPE_4__ {int (* disconnect ) (struct omap_dss_device*) ;int (* disable ) (struct omap_dss_device*) ;} ;
struct TYPE_3__ {scalar_t__ auto_update_work_enabled; struct omap_dss_device* dssdev; } ;


 int DBG (char*) ;
 scalar_t__ OMAP_DSS_DISPLAY_DISABLED ;
 int destroy_workqueue (int *) ;
 int dev_set_drvdata (int ,int *) ;
 int fbinfo_cleanup (struct omapfb2_device*,int ) ;
 int flush_workqueue (int *) ;
 int framebuffer_release (int ) ;
 int omap_dss_put_device (struct omap_dss_device*) ;
 int omapfb_free_all_fbmem (struct omapfb2_device*) ;
 int omapfb_stop_auto_update (struct omapfb2_device*,struct omap_dss_device*) ;
 int stub1 (struct omap_overlay*) ;
 int stub2 (struct omap_overlay*) ;
 int stub3 (struct omap_dss_device*) ;
 int stub4 (struct omap_dss_device*) ;
 int unregister_framebuffer (int ) ;

__attribute__((used)) static void omapfb_free_resources(struct omapfb2_device *fbdev)
{
 int i;

 DBG("free_resources\n");

 if (fbdev == ((void*)0))
  return;

 for (i = 0; i < fbdev->num_overlays; i++) {
  struct omap_overlay *ovl = fbdev->overlays[i];

  ovl->disable(ovl);

  if (ovl->manager)
   ovl->unset_manager(ovl);
 }

 for (i = 0; i < fbdev->num_fbs; i++)
  unregister_framebuffer(fbdev->fbs[i]);


 omapfb_free_all_fbmem(fbdev);

 for (i = 0; i < fbdev->num_fbs; i++) {
  fbinfo_cleanup(fbdev, fbdev->fbs[i]);
  framebuffer_release(fbdev->fbs[i]);
 }

 for (i = 0; i < fbdev->num_displays; i++) {
  struct omap_dss_device *dssdev = fbdev->displays[i].dssdev;

  if (fbdev->displays[i].auto_update_work_enabled)
   omapfb_stop_auto_update(fbdev, dssdev);

  if (dssdev->state != OMAP_DSS_DISPLAY_DISABLED)
   dssdev->driver->disable(dssdev);

  dssdev->driver->disconnect(dssdev);

  omap_dss_put_device(dssdev);
 }

 if (fbdev->auto_update_wq != ((void*)0)) {
  flush_workqueue(fbdev->auto_update_wq);
  destroy_workqueue(fbdev->auto_update_wq);
  fbdev->auto_update_wq = ((void*)0);
 }

 dev_set_drvdata(fbdev->dev, ((void*)0));
}
