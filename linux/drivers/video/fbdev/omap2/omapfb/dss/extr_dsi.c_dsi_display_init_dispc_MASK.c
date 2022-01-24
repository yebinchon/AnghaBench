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
struct platform_device {int dummy; } ;
struct omap_overlay_manager {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int stallmode; int fifohandcheck; scalar_t__ lcden_sig_polarity; int /*<<< orphan*/  video_port_width; int /*<<< orphan*/  io_pad_mode; } ;
struct TYPE_3__ {int interlace; int /*<<< orphan*/  sync_pclk_edge; void* de_level; int /*<<< orphan*/  data_pclk_edge; void* vsync_level; void* hsync_level; } ;
struct dsi_data {scalar_t__ module_id; scalar_t__ mode; TYPE_2__ mgr_config; int /*<<< orphan*/  pix_fmt; TYPE_1__ timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSS_IO_PAD_MODE_BYPASS ; 
 int /*<<< orphan*/  OMAPDSS_DRIVE_SIG_FALLING_EDGE ; 
 int /*<<< orphan*/  OMAPDSS_DRIVE_SIG_RISING_EDGE ; 
 void* OMAPDSS_SIG_ACTIVE_HIGH ; 
 int /*<<< orphan*/  OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC ; 
 int /*<<< orphan*/  OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC ; 
 int /*<<< orphan*/  OMAP_DSS_CLK_SRC_FCK ; 
 scalar_t__ OMAP_DSS_DSI_CMD_MODE ; 
 int FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  dsi_framedone_irq_callback ; 
 struct dsi_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct omap_overlay_manager*,int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_overlay_manager*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_overlay_manager*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_overlay_manager*,int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *dsidev,
		struct omap_overlay_manager *mgr)
{
	struct dsi_data *dsi = FUNC2(dsidev);
	int r;

	FUNC8(mgr->id, dsi->module_id == 0 ?
			OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC :
			OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC);

	if (dsi->mode == OMAP_DSS_DSI_CMD_MODE) {
		r = FUNC4(mgr,
				dsi_framedone_irq_callback, dsidev);
		if (r) {
			FUNC0("can't register FRAMEDONE handler\n");
			goto err;
		}

		dsi->mgr_config.stallmode = true;
		dsi->mgr_config.fifohandcheck = true;
	} else {
		dsi->mgr_config.stallmode = false;
		dsi->mgr_config.fifohandcheck = false;
	}

	/*
	 * override interlace, logic level and edge related parameters in
	 * omap_video_timings with default values
	 */
	dsi->timings.interlace = false;
	dsi->timings.hsync_level = OMAPDSS_SIG_ACTIVE_HIGH;
	dsi->timings.vsync_level = OMAPDSS_SIG_ACTIVE_HIGH;
	dsi->timings.data_pclk_edge = OMAPDSS_DRIVE_SIG_RISING_EDGE;
	dsi->timings.de_level = OMAPDSS_SIG_ACTIVE_HIGH;
	dsi->timings.sync_pclk_edge = OMAPDSS_DRIVE_SIG_FALLING_EDGE;

	FUNC6(mgr, &dsi->timings);

	r = FUNC1(dsidev);
	if (r)
		goto err1;

	dsi->mgr_config.io_pad_mode = DSS_IO_PAD_MODE_BYPASS;
	dsi->mgr_config.video_port_width =
			FUNC3(dsi->pix_fmt);
	dsi->mgr_config.lcden_sig_polarity = 0;

	FUNC5(mgr, &dsi->mgr_config);

	return 0;
err1:
	if (dsi->mode == OMAP_DSS_DSI_CMD_MODE)
		FUNC7(mgr,
				dsi_framedone_irq_callback, dsidev);
err:
	FUNC8(mgr->id, OMAP_DSS_CLK_SRC_FCK);
	return r;
}