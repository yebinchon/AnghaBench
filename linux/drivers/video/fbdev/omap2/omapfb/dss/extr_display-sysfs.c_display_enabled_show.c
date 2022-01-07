
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int omapdss_device_is_enabled (struct omap_dss_device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t display_enabled_show(struct omap_dss_device *dssdev, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n",
   omapdss_device_is_enabled(dssdev));
}
