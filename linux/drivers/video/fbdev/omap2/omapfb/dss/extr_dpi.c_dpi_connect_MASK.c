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
struct dpi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 struct dpi_data* FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpi_data*) ; 
 int FUNC3 (struct dpi_data*) ; 
 int FUNC4 (struct omap_overlay_manager*,struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_overlay_manager*,struct omap_dss_device*) ; 
 struct omap_overlay_manager* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct omap_dss_device*,struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC8(struct omap_dss_device *dssdev,
		struct omap_dss_device *dst)
{
	struct dpi_data *dpi = FUNC1(dssdev);
	struct omap_overlay_manager *mgr;
	int r;

	r = FUNC3(dpi);
	if (r)
		return r;

	FUNC2(dpi);

	mgr = FUNC6(dssdev->dispc_channel);
	if (!mgr)
		return -ENODEV;

	r = FUNC4(mgr, dssdev);
	if (r)
		return r;

	r = FUNC7(dssdev, dst);
	if (r) {
		FUNC0("failed to connect output to new device: %s\n",
				dst->name);
		FUNC5(mgr, dssdev);
		return r;
	}

	return 0;
}