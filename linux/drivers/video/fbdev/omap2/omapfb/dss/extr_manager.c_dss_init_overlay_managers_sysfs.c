
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;


 int DSSERR (char*) ;
 int dss_manager_kobj_init (struct omap_overlay_manager*,struct platform_device*) ;
 struct omap_overlay_manager* managers ;
 int num_managers ;

int dss_init_overlay_managers_sysfs(struct platform_device *pdev)
{
 int i, r;

 for (i = 0; i < num_managers; ++i) {
  struct omap_overlay_manager *mgr = &managers[i];

  r = dss_manager_kobj_init(mgr, pdev);
  if (r)
   DSSERR("failed to create sysfs file\n");
 }

 return 0;
}
