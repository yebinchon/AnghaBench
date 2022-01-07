
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int handle; int * attrs; } ;


 TYPE_1__* bcare_ctl ;
 int device_remove_file (int *,int *) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void sony_nc_battery_care_cleanup(struct platform_device *pd)
{
 if (bcare_ctl) {
  device_remove_file(&pd->dev, &bcare_ctl->attrs[0]);
  if (bcare_ctl->handle != 0x0115)
   device_remove_file(&pd->dev, &bcare_ctl->attrs[1]);

  kfree(bcare_ctl);
  bcare_ctl = ((void*)0);
 }
}
