
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* driver; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* set_rotate ) (struct omap_dss_device*,int) ;int get_rotate; } ;


 int ENOENT ;
 int kstrtoint (char const*,int ,int*) ;
 int stub1 (struct omap_dss_device*,int) ;

__attribute__((used)) static ssize_t display_rotate_store(struct omap_dss_device *dssdev,
 const char *buf, size_t size)
{
 int rot, r;

 if (!dssdev->driver->set_rotate || !dssdev->driver->get_rotate)
  return -ENOENT;

 r = kstrtoint(buf, 0, &rot);
 if (r)
  return r;

 r = dssdev->driver->set_rotate(dssdev, rot);
 if (r)
  return r;

 return size;
}
