
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int devattr; } ;


 scalar_t__ debug ;
 int device_remove_file (int *,int *) ;
 TYPE_1__* handles ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static int sony_nc_handles_cleanup(struct platform_device *pd)
{
 if (handles) {
  if (debug)
   device_remove_file(&pd->dev, &handles->devattr);
  kfree(handles);
  handles = ((void*)0);
 }
 return 0;
}
