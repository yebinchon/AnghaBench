#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int dummy; } ;
struct omap_overlay_manager {int /*<<< orphan*/ * get_device; int /*<<< orphan*/ * wait_for_vsync; int /*<<< orphan*/ * wait_for_go; int /*<<< orphan*/ * get_manager_info; int /*<<< orphan*/ * set_manager_info; int /*<<< orphan*/ * apply; int /*<<< orphan*/ * unset_output; int /*<<< orphan*/ * set_output; } ;
struct omap_overlay {int /*<<< orphan*/ * get_device; int /*<<< orphan*/ * wait_for_go; int /*<<< orphan*/ * get_overlay_info; int /*<<< orphan*/ * set_overlay_info; int /*<<< orphan*/ * unset_manager; int /*<<< orphan*/ * set_manager; int /*<<< orphan*/ * disable; int /*<<< orphan*/ * enable; int /*<<< orphan*/ * is_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  apply_mgr_ops ; 
 int /*<<< orphan*/  compat_init_lock ; 
 int /*<<< orphan*/  compat_refcnt ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int FUNC5 () ; 
 struct platform_device* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dss_mgr_get_device ; 
 int /*<<< orphan*/  dss_mgr_get_info ; 
 int /*<<< orphan*/  dss_mgr_set_info ; 
 int /*<<< orphan*/  dss_mgr_set_output ; 
 int /*<<< orphan*/  dss_mgr_unset_output ; 
 int /*<<< orphan*/  dss_mgr_wait_for_go ; 
 int /*<<< orphan*/  dss_mgr_wait_for_go_ovl ; 
 int /*<<< orphan*/  dss_mgr_wait_for_vsync ; 
 int /*<<< orphan*/  dss_ovl_disable ; 
 int /*<<< orphan*/  dss_ovl_enable ; 
 int /*<<< orphan*/  dss_ovl_get_device ; 
 int /*<<< orphan*/  dss_ovl_get_info ; 
 int /*<<< orphan*/  dss_ovl_is_enabled ; 
 int /*<<< orphan*/  dss_ovl_set_info ; 
 int /*<<< orphan*/  dss_ovl_set_manager ; 
 int /*<<< orphan*/  dss_ovl_unset_manager ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 () ; 
 int FUNC16 () ; 
 struct omap_overlay* FUNC17 (int) ; 
 struct omap_overlay_manager* FUNC18 (int) ; 
 int /*<<< orphan*/  omap_dss_mgr_apply ; 

int FUNC19(void)
{
	struct platform_device *pdev = FUNC6();
	int i, r;

	FUNC13(&compat_init_lock);

	if (compat_refcnt++ > 0)
		goto out;

	FUNC0();

	FUNC7(pdev);
	FUNC8(pdev);

	for (i = 0; i < FUNC15(); i++) {
		struct omap_overlay_manager *mgr;

		mgr = FUNC18(i);

		mgr->set_output = &dss_mgr_set_output;
		mgr->unset_output = &dss_mgr_unset_output;
		mgr->apply = &omap_dss_mgr_apply;
		mgr->set_manager_info = &dss_mgr_set_info;
		mgr->get_manager_info = &dss_mgr_get_info;
		mgr->wait_for_go = &dss_mgr_wait_for_go;
		mgr->wait_for_vsync = &dss_mgr_wait_for_vsync;
		mgr->get_device = &dss_mgr_get_device;
	}

	for (i = 0; i < FUNC16(); i++) {
		struct omap_overlay *ovl = FUNC17(i);

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

	r = FUNC9(&apply_mgr_ops);
	if (r)
		goto err_mgr_ops;

	r = FUNC3(pdev);
	if (r)
		goto err_disp_sysfs;

	FUNC1();

	r = FUNC5();
	if (r)
		goto err_init_irq;

	FUNC2();

out:
	FUNC14(&compat_init_lock);

	return 0;

err_init_irq:
	FUNC2();
	FUNC4(pdev);

err_disp_sysfs:
	FUNC12();

err_mgr_ops:
	FUNC10(pdev);
	FUNC11(pdev);

	compat_refcnt--;

	FUNC14(&compat_init_lock);

	return r;
}