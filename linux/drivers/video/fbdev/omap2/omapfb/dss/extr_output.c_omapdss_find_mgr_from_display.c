
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {struct omap_overlay_manager* manager; } ;


 int omap_dss_put_device (struct omap_dss_device*) ;
 struct omap_dss_device* omapdss_find_output_from_display (struct omap_dss_device*) ;

struct omap_overlay_manager *omapdss_find_mgr_from_display(struct omap_dss_device *dssdev)
{
 struct omap_dss_device *out;
 struct omap_overlay_manager *mgr;

 out = omapdss_find_output_from_display(dssdev);

 if (out == ((void*)0))
  return ((void*)0);

 mgr = out->manager;

 omap_dss_put_device(out);

 return mgr;
}
