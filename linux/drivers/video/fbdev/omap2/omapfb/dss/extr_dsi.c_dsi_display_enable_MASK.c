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
struct omap_dss_device {int dummy; } ;
struct dsi_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*) ; 
 struct platform_device* FUNC5 (struct omap_dss_device*) ; 
 struct dsi_data* FUNC6 (struct platform_device*) ; 
 int FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct omap_dss_device *dssdev)
{
	struct platform_device *dsidev = FUNC5(dssdev);
	struct dsi_data *dsi = FUNC6(dsidev);
	int r = 0;

	FUNC0("dsi_display_enable\n");

	FUNC1(!FUNC3(dsidev));

	FUNC9(&dsi->lock);

	r = FUNC7(dsidev);
	if (r)
		goto err_get_dsi;

	FUNC2(dsidev);

	r = FUNC4(dsidev);
	if (r)
		goto err_init_dsi;

	FUNC10(&dsi->lock);

	return 0;

err_init_dsi:
	FUNC8(dsidev);
err_get_dsi:
	FUNC10(&dsi->lock);
	FUNC0("dsi_display_enable FAILED\n");
	return r;
}