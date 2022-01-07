
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int owner; int dev; } ;


 int module_put (int ) ;
 int put_device (int ) ;

void omap_dss_put_device(struct omap_dss_device *dssdev)
{
 put_device(dssdev->dev);
 module_put(dssdev->owner);
}
