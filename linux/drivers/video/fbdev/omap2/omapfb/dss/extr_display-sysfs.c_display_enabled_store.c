
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* driver; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* enable ) (struct omap_dss_device*) ;int (* disable ) (struct omap_dss_device*) ;} ;


 int ENODEV ;
 int omapdss_device_is_connected (struct omap_dss_device*) ;
 int omapdss_device_is_enabled (struct omap_dss_device*) ;
 int strtobool (char const*,int*) ;
 int stub1 (struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*) ;

__attribute__((used)) static ssize_t display_enabled_store(struct omap_dss_device *dssdev,
  const char *buf, size_t size)
{
 int r;
 bool enable;

 r = strtobool(buf, &enable);
 if (r)
  return r;

 if (enable == omapdss_device_is_enabled(dssdev))
  return size;

 if (omapdss_device_is_connected(dssdev) == 0)
  return -ENODEV;

 if (enable) {
  r = dssdev->driver->enable(dssdev);
  if (r)
   return r;
 } else {
  dssdev->driver->disable(dssdev);
 }

 return size;
}
