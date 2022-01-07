
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_dss_device {TYPE_1__* driver; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* set_wss ) (struct omap_dss_device*,int) ;int get_wss; } ;


 int EINVAL ;
 int ENOENT ;
 int kstrtou32 (char const*,int ,int*) ;
 int stub1 (struct omap_dss_device*,int) ;

__attribute__((used)) static ssize_t display_wss_store(struct omap_dss_device *dssdev,
 const char *buf, size_t size)
{
 u32 wss;
 int r;

 if (!dssdev->driver->get_wss || !dssdev->driver->set_wss)
  return -ENOENT;

 r = kstrtou32(buf, 0, &wss);
 if (r)
  return r;

 if (wss > 0xfffff)
  return -EINVAL;

 r = dssdev->driver->set_wss(dssdev, wss);
 if (r)
  return r;

 return size;
}
