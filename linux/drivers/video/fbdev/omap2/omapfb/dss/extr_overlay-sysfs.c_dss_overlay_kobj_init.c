
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_overlay {int id; int kobj; } ;


 int kobject_init_and_add (int *,int *,int *,char*,int ) ;
 int overlay_ktype ;

int dss_overlay_kobj_init(struct omap_overlay *ovl,
  struct platform_device *pdev)
{
 return kobject_init_and_add(&ovl->kobj, &overlay_ktype,
   &pdev->dev.kobj, "overlay%d", ovl->id);
}
