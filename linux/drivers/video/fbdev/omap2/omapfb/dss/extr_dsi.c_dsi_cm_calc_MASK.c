#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_dss_dsi_config {int hs_clk_min; int hs_clk_max; TYPE_1__* timings; int /*<<< orphan*/  pixel_format; } ;
struct TYPE_4__ {int /*<<< orphan*/  clkin; } ;
struct dsi_data {int num_lanes_used; TYPE_2__ pll; int /*<<< orphan*/  pdev; } ;
struct dsi_clk_calc_ctx {unsigned long req_pck_min; unsigned long req_pck_nom; unsigned long req_pck_max; TYPE_2__* pll; struct omap_dss_dsi_config const* config; int /*<<< orphan*/  dsidev; } ;
struct TYPE_3__ {unsigned long pixelclock; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsi_cm_calc_pll_cb ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,struct dsi_clk_calc_ctx*) ; 
 unsigned long FUNC3 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_clk_calc_ctx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC5(struct dsi_data *dsi,
		const struct omap_dss_dsi_config *cfg,
		struct dsi_clk_calc_ctx *ctx)
{
	unsigned long clkin;
	int bitspp, ndl;
	unsigned long pll_min, pll_max;
	unsigned long pck, txbyteclk;

	clkin = FUNC0(dsi->pll.clkin);
	bitspp = FUNC1(cfg->pixel_format);
	ndl = dsi->num_lanes_used - 1;

	/*
	 * Here we should calculate minimum txbyteclk to be able to send the
	 * frame in time, and also to handle TE. That's not very simple, though,
	 * especially as we go to LP between each pixel packet due to HW
	 * "feature". So let's just estimate very roughly and multiply by 1.5.
	 */
	pck = cfg->timings->pixelclock;
	pck = pck * 3 / 2;
	txbyteclk = pck * bitspp / 8 / ndl;

	FUNC4(ctx, 0, sizeof(*ctx));
	ctx->dsidev = dsi->pdev;
	ctx->pll = &dsi->pll;
	ctx->config = cfg;
	ctx->req_pck_min = pck;
	ctx->req_pck_nom = pck;
	ctx->req_pck_max = pck * 3 / 2;

	pll_min = FUNC3(cfg->hs_clk_min * 4, txbyteclk * 4 * 4);
	pll_max = cfg->hs_clk_max * 4;

	return FUNC2(ctx->pll, clkin,
			pll_min, pll_max,
			dsi_cm_calc_pll_cb, ctx);
}