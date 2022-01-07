
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* driver; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_rotate ) (struct omap_dss_device*) ;} ;


 int ENOENT ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 int stub1 (struct omap_dss_device*) ;

__attribute__((used)) static ssize_t display_rotate_show(struct omap_dss_device *dssdev, char *buf)
{
 int rotate;
 if (!dssdev->driver->get_rotate)
  return -ENOENT;
 rotate = dssdev->driver->get_rotate(dssdev);
 return snprintf(buf, PAGE_SIZE, "%u\n", rotate);
}
