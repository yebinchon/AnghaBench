
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int attr; } ;


 int device_remove_file (int *,int *) ;
 TYPE_1__* gfxs_ctl ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void sony_nc_gfx_switch_cleanup(struct platform_device *pd)
{
 if (gfxs_ctl) {
  device_remove_file(&pd->dev, &gfxs_ctl->attr);

  kfree(gfxs_ctl);
  gfxs_ctl = ((void*)0);
 }
}
