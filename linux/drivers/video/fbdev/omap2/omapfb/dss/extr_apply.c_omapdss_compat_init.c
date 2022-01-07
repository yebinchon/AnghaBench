
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_overlay_manager {int * get_device; int * wait_for_vsync; int * wait_for_go; int * get_manager_info; int * set_manager_info; int * apply; int * unset_output; int * set_output; } ;
struct omap_overlay {int * get_device; int * wait_for_go; int * get_overlay_info; int * set_overlay_info; int * unset_manager; int * set_manager; int * disable; int * enable; int * is_enabled; } ;


 int apply_init_priv () ;
 int apply_mgr_ops ;
 int compat_init_lock ;
 int compat_refcnt ;
 int dispc_runtime_get () ;
 int dispc_runtime_put () ;
 int display_init_sysfs (struct platform_device*) ;
 int display_uninit_sysfs (struct platform_device*) ;
 int dss_dispc_initialize_irq () ;
 struct platform_device* dss_get_core_pdev () ;
 int dss_init_overlay_managers_sysfs (struct platform_device*) ;
 int dss_init_overlays (struct platform_device*) ;
 int dss_install_mgr_ops (int *) ;
 int dss_mgr_get_device ;
 int dss_mgr_get_info ;
 int dss_mgr_set_info ;
 int dss_mgr_set_output ;
 int dss_mgr_unset_output ;
 int dss_mgr_wait_for_go ;
 int dss_mgr_wait_for_go_ovl ;
 int dss_mgr_wait_for_vsync ;
 int dss_ovl_disable ;
 int dss_ovl_enable ;
 int dss_ovl_get_device ;
 int dss_ovl_get_info ;
 int dss_ovl_is_enabled ;
 int dss_ovl_set_info ;
 int dss_ovl_set_manager ;
 int dss_ovl_unset_manager ;
 int dss_uninit_overlay_managers_sysfs (struct platform_device*) ;
 int dss_uninit_overlays (struct platform_device*) ;
 int dss_uninstall_mgr_ops () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_dss_get_num_overlay_managers () ;
 int omap_dss_get_num_overlays () ;
 struct omap_overlay* omap_dss_get_overlay (int) ;
 struct omap_overlay_manager* omap_dss_get_overlay_manager (int) ;
 int omap_dss_mgr_apply ;

int omapdss_compat_init(void)
{
 struct platform_device *pdev = dss_get_core_pdev();
 int i, r;

 mutex_lock(&compat_init_lock);

 if (compat_refcnt++ > 0)
  goto out;

 apply_init_priv();

 dss_init_overlay_managers_sysfs(pdev);
 dss_init_overlays(pdev);

 for (i = 0; i < omap_dss_get_num_overlay_managers(); i++) {
  struct omap_overlay_manager *mgr;

  mgr = omap_dss_get_overlay_manager(i);

  mgr->set_output = &dss_mgr_set_output;
  mgr->unset_output = &dss_mgr_unset_output;
  mgr->apply = &omap_dss_mgr_apply;
  mgr->set_manager_info = &dss_mgr_set_info;
  mgr->get_manager_info = &dss_mgr_get_info;
  mgr->wait_for_go = &dss_mgr_wait_for_go;
  mgr->wait_for_vsync = &dss_mgr_wait_for_vsync;
  mgr->get_device = &dss_mgr_get_device;
 }

 for (i = 0; i < omap_dss_get_num_overlays(); i++) {
  struct omap_overlay *ovl = omap_dss_get_overlay(i);

  ovl->is_enabled = &dss_ovl_is_enabled;
  ovl->enable = &dss_ovl_enable;
  ovl->disable = &dss_ovl_disable;
  ovl->set_manager = &dss_ovl_set_manager;
  ovl->unset_manager = &dss_ovl_unset_manager;
  ovl->set_overlay_info = &dss_ovl_set_info;
  ovl->get_overlay_info = &dss_ovl_get_info;
  ovl->wait_for_go = &dss_mgr_wait_for_go_ovl;
  ovl->get_device = &dss_ovl_get_device;
 }

 r = dss_install_mgr_ops(&apply_mgr_ops);
 if (r)
  goto err_mgr_ops;

 r = display_init_sysfs(pdev);
 if (r)
  goto err_disp_sysfs;

 dispc_runtime_get();

 r = dss_dispc_initialize_irq();
 if (r)
  goto err_init_irq;

 dispc_runtime_put();

out:
 mutex_unlock(&compat_init_lock);

 return 0;

err_init_irq:
 dispc_runtime_put();
 display_uninit_sysfs(pdev);

err_disp_sysfs:
 dss_uninstall_mgr_ops();

err_mgr_ops:
 dss_uninit_overlay_managers_sysfs(pdev);
 dss_uninit_overlays(pdev);

 compat_refcnt--;

 mutex_unlock(&compat_init_lock);

 return r;
}
