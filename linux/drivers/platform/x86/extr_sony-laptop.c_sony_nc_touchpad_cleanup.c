
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int attr; } ;


 int device_remove_file (int *,int *) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* tp_ctl ;

__attribute__((used)) static void sony_nc_touchpad_cleanup(struct platform_device *pd)
{
 if (tp_ctl) {
  device_remove_file(&pd->dev, &tp_ctl->attr);
  kfree(tp_ctl);
  tp_ctl = ((void*)0);
 }
}
