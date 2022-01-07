
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int device_remove_file (int *,int *) ;
 int * hsc_handle ;
 int kfree (int *) ;

__attribute__((used)) static void sony_nc_highspeed_charging_cleanup(struct platform_device *pd)
{
 if (hsc_handle) {
  device_remove_file(&pd->dev, hsc_handle);
  kfree(hsc_handle);
  hsc_handle = ((void*)0);
 }
}
