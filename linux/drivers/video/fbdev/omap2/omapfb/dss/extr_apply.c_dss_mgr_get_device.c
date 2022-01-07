
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {struct omap_dss_device* output; } ;
struct omap_dss_device {scalar_t__ driver; struct omap_dss_device* dst; } ;



__attribute__((used)) static struct omap_dss_device *dss_mgr_get_device(struct omap_overlay_manager *mgr)
{
 struct omap_dss_device *dssdev;

 dssdev = mgr->output;
 if (dssdev == ((void*)0))
  return ((void*)0);

 while (dssdev->dst)
  dssdev = dssdev->dst;

 if (dssdev->driver)
  return dssdev;
 else
  return ((void*)0);
}
