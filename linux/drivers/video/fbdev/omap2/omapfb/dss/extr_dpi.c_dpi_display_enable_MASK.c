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
struct omap_dss_device {TYPE_1__* manager; int /*<<< orphan*/  port_num; } ;
struct dpi_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  vdds_dsi_reg; scalar_t__ pll; struct omap_dss_device output; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FEAT_DPI_USES_VDDS_DSI ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dpi_data*) ; 
 struct dpi_data* FUNC4 (struct omap_dss_device*) ; 
 int FUNC5 (struct dpi_data*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct omap_dss_device *dssdev)
{
	struct dpi_data *dpi = FUNC4(dssdev);
	struct omap_dss_device *out = &dpi->output;
	int r;

	FUNC12(&dpi->lock);

	if (FUNC7(FEAT_DPI_USES_VDDS_DSI) && !dpi->vdds_dsi_reg) {
		FUNC0("no VDSS_DSI regulator\n");
		r = -ENODEV;
		goto err_no_reg;
	}

	if (out->manager == NULL) {
		FUNC0("failed to enable display: no output/manager\n");
		r = -ENODEV;
		goto err_no_out_mgr;
	}

	if (FUNC7(FEAT_DPI_USES_VDDS_DSI)) {
		r = FUNC15(dpi->vdds_dsi_reg);
		if (r)
			goto err_reg_enable;
	}

	r = FUNC1();
	if (r)
		goto err_get_dispc;

	r = FUNC6(out->port_num, out->manager->id);
	if (r)
		goto err_src_sel;

	if (dpi->pll) {
		r = FUNC10(dpi->pll);
		if (r)
			goto err_dsi_pll_init;
	}

	r = FUNC5(dpi);
	if (r)
		goto err_set_mode;

	FUNC3(dpi);

	FUNC11(2);

	r = FUNC8(out->manager);
	if (r)
		goto err_mgr_enable;

	FUNC13(&dpi->lock);

	return 0;

err_mgr_enable:
err_set_mode:
	if (dpi->pll)
		FUNC9(dpi->pll);
err_dsi_pll_init:
err_src_sel:
	FUNC2();
err_get_dispc:
	if (FUNC7(FEAT_DPI_USES_VDDS_DSI))
		FUNC14(dpi->vdds_dsi_reg);
err_reg_enable:
err_no_out_mgr:
err_no_reg:
	FUNC13(&dpi->lock);
	return r;
}