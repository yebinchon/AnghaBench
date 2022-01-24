#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct omap_dss_dsi_config {scalar_t__ mode; int /*<<< orphan*/  lp_clk_max; int /*<<< orphan*/  lp_clk_min; int /*<<< orphan*/  pixel_format; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * clkout; } ;
struct dsi_data {scalar_t__ mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  vm_timings; int /*<<< orphan*/  timings; int /*<<< orphan*/  user_dispc_cinfo; TYPE_1__ user_dsi_cinfo; int /*<<< orphan*/  user_lp_cinfo; int /*<<< orphan*/  pix_fmt; } ;
struct dsi_clk_calc_ctx {int /*<<< orphan*/  dsi_vm; int /*<<< orphan*/  dispc_vm; int /*<<< orphan*/  dispc_cinfo; TYPE_1__ dsi_cinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 size_t HSDIV_DSI ; 
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ; 
 int FUNC1 (struct dsi_data*,struct omap_dss_dsi_config const*,struct dsi_clk_calc_ctx*) ; 
 struct platform_device* FUNC2 (struct omap_dss_device*) ; 
 struct dsi_data* FUNC3 (struct platform_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct dsi_data*,struct omap_dss_dsi_config const*,struct dsi_clk_calc_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct omap_dss_device *dssdev,
		const struct omap_dss_dsi_config *config)
{
	struct platform_device *dsidev = FUNC2(dssdev);
	struct dsi_data *dsi = FUNC3(dsidev);
	struct dsi_clk_calc_ctx ctx;
	bool ok;
	int r;

	FUNC7(&dsi->lock);

	dsi->pix_fmt = config->pixel_format;
	dsi->mode = config->mode;

	if (config->mode == OMAP_DSS_DSI_VIDEO_MODE)
		ok = FUNC6(dsi, config, &ctx);
	else
		ok = FUNC1(dsi, config, &ctx);

	if (!ok) {
		FUNC0("failed to find suitable DSI clock settings\n");
		r = -EINVAL;
		goto err;
	}

	FUNC5(&ctx.dsi_cinfo);

	r = FUNC4(ctx.dsi_cinfo.clkout[HSDIV_DSI],
		config->lp_clk_min, config->lp_clk_max, &dsi->user_lp_cinfo);
	if (r) {
		FUNC0("failed to find suitable DSI LP clock settings\n");
		goto err;
	}

	dsi->user_dsi_cinfo = ctx.dsi_cinfo;
	dsi->user_dispc_cinfo = ctx.dispc_cinfo;

	dsi->timings = ctx.dispc_vm;
	dsi->vm_timings = ctx.dsi_vm;

	FUNC8(&dsi->lock);

	return 0;
err:
	FUNC8(&dsi->lock);

	return r;
}