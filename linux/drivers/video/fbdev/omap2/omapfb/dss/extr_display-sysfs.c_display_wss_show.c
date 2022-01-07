
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* driver; } ;
typedef int ssize_t ;
struct TYPE_2__ {unsigned int (* get_wss ) (struct omap_dss_device*) ;} ;


 int ENOENT ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,unsigned int) ;
 unsigned int stub1 (struct omap_dss_device*) ;

__attribute__((used)) static ssize_t display_wss_show(struct omap_dss_device *dssdev, char *buf)
{
 unsigned int wss;

 if (!dssdev->driver->get_wss)
  return -ENOENT;

 wss = dssdev->driver->get_wss(dssdev);

 return snprintf(buf, PAGE_SIZE, "0x%05x\n", wss);
}
