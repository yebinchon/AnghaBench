
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;


 int dss_manager_kobj_uninit (struct omap_overlay_manager*) ;
 struct omap_overlay_manager* managers ;
 int num_managers ;

void dss_uninit_overlay_managers_sysfs(struct platform_device *pdev)
{
 int i;

 for (i = 0; i < num_managers; ++i) {
  struct omap_overlay_manager *mgr = &managers[i];

  dss_manager_kobj_uninit(mgr);
 }
}
