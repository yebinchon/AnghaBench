
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* driver; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* set_mirror ) (struct omap_dss_device*,int) ;int get_mirror; } ;


 int ENOENT ;
 int strtobool (char const*,int*) ;
 int stub1 (struct omap_dss_device*,int) ;

__attribute__((used)) static ssize_t display_mirror_store(struct omap_dss_device *dssdev,
 const char *buf, size_t size)
{
 int r;
 bool mirror;

 if (!dssdev->driver->set_mirror || !dssdev->driver->get_mirror)
  return -ENOENT;

 r = strtobool(buf, &mirror);
 if (r)
  return r;

 r = dssdev->driver->set_mirror(dssdev, mirror);
 if (r)
  return r;

 return size;
}
