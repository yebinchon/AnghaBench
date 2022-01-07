
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int kobj; } ;


 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int memset (int *,int ,int) ;

void dss_manager_kobj_uninit(struct omap_overlay_manager *mgr)
{
 kobject_del(&mgr->kobj);
 kobject_put(&mgr->kobj);

 memset(&mgr->kobj, 0, sizeof(mgr->kobj));
}
