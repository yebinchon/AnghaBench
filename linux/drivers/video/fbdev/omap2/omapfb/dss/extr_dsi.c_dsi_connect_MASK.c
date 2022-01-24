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
struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dispc_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 struct platform_device* FUNC1 (struct omap_dss_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct omap_overlay_manager*,struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_overlay_manager*,struct omap_dss_device*) ; 
 struct omap_overlay_manager* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct omap_dss_device*,struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC7(struct omap_dss_device *dssdev,
		struct omap_dss_device *dst)
{
	struct platform_device *dsidev = FUNC1(dssdev);
	struct omap_overlay_manager *mgr;
	int r;

	r = FUNC2(dsidev);
	if (r)
		return r;

	mgr = FUNC5(dssdev->dispc_channel);
	if (!mgr)
		return -ENODEV;

	r = FUNC3(mgr, dssdev);
	if (r)
		return r;

	r = FUNC6(dssdev, dst);
	if (r) {
		FUNC0("failed to connect output to new device: %s\n",
				dssdev->name);
		FUNC4(mgr, dssdev);
		return r;
	}

	return 0;
}