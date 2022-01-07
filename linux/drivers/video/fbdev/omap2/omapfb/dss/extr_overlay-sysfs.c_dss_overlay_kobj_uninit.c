
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay {int kobj; } ;


 int kobject_del (int *) ;
 int kobject_put (int *) ;

void dss_overlay_kobj_uninit(struct omap_overlay *ovl)
{
 kobject_del(&ovl->kobj);
 kobject_put(&ovl->kobj);
}
