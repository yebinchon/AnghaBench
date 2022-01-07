
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int device_remove_file (int *,int *) ;
 int * fan_handle ;
 int * hsf_handle ;
 int kfree (int *) ;

__attribute__((used)) static void sony_nc_fanspeed_cleanup(struct platform_device *pd)
{
 if (fan_handle) {
  device_remove_file(&pd->dev, fan_handle);
  kfree(fan_handle);
  fan_handle = ((void*)0);
 }
 if (hsf_handle) {
  device_remove_file(&pd->dev, hsf_handle);
  kfree(hsf_handle);
  hsf_handle = ((void*)0);
 }
}
