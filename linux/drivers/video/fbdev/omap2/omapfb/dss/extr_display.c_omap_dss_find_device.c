
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;


 struct omap_dss_device* omap_dss_get_next_device (struct omap_dss_device*) ;

struct omap_dss_device *omap_dss_find_device(void *data,
  int (*match)(struct omap_dss_device *dssdev, void *data))
{
 struct omap_dss_device *dssdev = ((void*)0);

 while ((dssdev = omap_dss_get_next_device(dssdev)) != ((void*)0)) {
  if (match(dssdev, data))
   return dssdev;
 }

 return ((void*)0);
}
