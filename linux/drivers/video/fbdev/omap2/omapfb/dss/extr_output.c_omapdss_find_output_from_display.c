
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {scalar_t__ id; struct omap_dss_device* src; } ;


 struct omap_dss_device* omap_dss_get_device (struct omap_dss_device*) ;

struct omap_dss_device *omapdss_find_output_from_display(struct omap_dss_device *dssdev)
{
 while (dssdev->src)
  dssdev = dssdev->src;

 if (dssdev->id != 0)
  return omap_dss_get_device(dssdev);

 return ((void*)0);
}
