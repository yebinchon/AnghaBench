
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int name; } ;


 int sysfs_streq (int ,char const*) ;

__attribute__((used)) static int manager_display_match(struct omap_dss_device *dssdev, void *data)
{
 const char *str = data;

 return sysfs_streq(dssdev->name, str);
}
