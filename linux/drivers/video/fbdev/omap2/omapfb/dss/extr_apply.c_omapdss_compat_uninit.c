
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int compat_init_lock ;
 scalar_t__ compat_refcnt ;
 int display_uninit_sysfs (struct platform_device*) ;
 int dss_dispc_uninitialize_irq () ;
 struct platform_device* dss_get_core_pdev () ;
 int dss_uninit_overlay_managers_sysfs (struct platform_device*) ;
 int dss_uninit_overlays (struct platform_device*) ;
 int dss_uninstall_mgr_ops () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void omapdss_compat_uninit(void)
{
 struct platform_device *pdev = dss_get_core_pdev();

 mutex_lock(&compat_init_lock);

 if (--compat_refcnt > 0)
  goto out;

 dss_dispc_uninitialize_irq();

 display_uninit_sysfs(pdev);

 dss_uninstall_mgr_ops();

 dss_uninit_overlay_managers_sysfs(pdev);
 dss_uninit_overlays(pdev);
out:
 mutex_unlock(&compat_init_lock);
}
