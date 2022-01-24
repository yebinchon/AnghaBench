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
struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dispc_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int FUNC1 (struct omap_overlay_manager*,struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_overlay_manager*,struct omap_dss_device*) ; 
 int FUNC3 () ; 
 struct omap_overlay_manager* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct omap_dss_device*,struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC6(struct omap_dss_device *dssdev,
		struct omap_dss_device *dst)
{
	struct omap_overlay_manager *mgr;
	int r;

	r = FUNC3();
	if (r)
		return r;

	mgr = FUNC4(dssdev->dispc_channel);
	if (!mgr)
		return -ENODEV;

	r = FUNC1(mgr, dssdev);
	if (r)
		return r;

	r = FUNC5(dssdev, dst);
	if (r) {
		FUNC0("failed to connect output to new device: %s\n",
				dst->name);
		FUNC2(mgr, dssdev);
		return r;
	}

	return 0;
}