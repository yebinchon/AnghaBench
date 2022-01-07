
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int mode_attr; int profiles_attr; } ;


 int device_remove_file (int *,int *) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* th_handle ;

__attribute__((used)) static void sony_nc_thermal_cleanup(struct platform_device *pd)
{
 if (th_handle) {
  device_remove_file(&pd->dev, &th_handle->profiles_attr);
  device_remove_file(&pd->dev, &th_handle->mode_attr);
  kfree(th_handle);
  th_handle = ((void*)0);
 }
}
