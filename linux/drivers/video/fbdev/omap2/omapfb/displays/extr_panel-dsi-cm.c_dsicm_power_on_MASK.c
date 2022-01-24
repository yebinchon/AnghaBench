#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {scalar_t__ num_pins; } ;
struct panel_drv_data {int enabled; int intro_printed; TYPE_1__* pdev; int /*<<< orphan*/  channel; int /*<<< orphan*/  te_enabled; TYPE_4__ pin_config; int /*<<< orphan*/  timings; struct omap_dss_device* in; } ;
struct omap_dss_dsi_config {int hs_clk_min; int hs_clk_max; int lp_clk_min; int lp_clk_max; int /*<<< orphan*/ * timings; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  mode; } ;
struct TYPE_7__ {TYPE_2__* dsi; } ;
struct omap_dss_device {TYPE_3__ ops; } ;
struct TYPE_6__ {int (* configure_pins ) (struct omap_dss_device*,TYPE_4__*) ;int (* set_config ) (struct omap_dss_device*,struct omap_dss_dsi_config*) ;int (* enable ) (struct omap_dss_device*) ;int (* enable_video_output ) (struct omap_dss_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disable ) (struct omap_dss_device*,int,int) ;int /*<<< orphan*/  (* enable_hs ) (struct omap_dss_device*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCS_BRIGHTNESS ; 
 int /*<<< orphan*/  DCS_CTRL_DISPLAY ; 
 int MIPI_DCS_PIXEL_FMT_24BIT ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_ON ; 
 int /*<<< orphan*/  MIPI_DCS_SET_PIXEL_FORMAT ; 
 int /*<<< orphan*/  OMAP_DSS_DSI_CMD_MODE ; 
 int /*<<< orphan*/  OMAP_DSS_DSI_FMT_RGB888 ; 
 int FUNC0 (struct panel_drv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct panel_drv_data*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct panel_drv_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct panel_drv_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct panel_drv_data*) ; 
 int FUNC7 (struct panel_drv_data*) ; 
 int FUNC8 (struct omap_dss_device*,TYPE_4__*) ; 
 int FUNC9 (struct omap_dss_device*,struct omap_dss_dsi_config*) ; 
 int FUNC10 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct omap_dss_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct omap_dss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct omap_dss_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct omap_dss_device*,int,int) ; 

__attribute__((used)) static int FUNC15(struct panel_drv_data *ddata)
{
	struct omap_dss_device *in = ddata->in;
	u8 id1, id2, id3;
	int r;
	struct omap_dss_dsi_config dsi_config = {
		.mode = OMAP_DSS_DSI_CMD_MODE,
		.pixel_format = OMAP_DSS_DSI_FMT_RGB888,
		.timings = &ddata->timings,
		.hs_clk_min = 150000000,
		.hs_clk_max = 300000000,
		.lp_clk_min = 7000000,
		.lp_clk_max = 10000000,
	};

	if (ddata->pin_config.num_pins > 0) {
		r = in->ops.dsi->configure_pins(in, &ddata->pin_config);
		if (r) {
			FUNC1(&ddata->pdev->dev,
				"failed to configure DSI pins\n");
			goto err0;
		}
	}

	r = in->ops.dsi->set_config(in, &dsi_config);
	if (r) {
		FUNC1(&ddata->pdev->dev, "failed to configure DSI\n");
		goto err0;
	}

	r = in->ops.dsi->enable(in);
	if (r) {
		FUNC1(&ddata->pdev->dev, "failed to enable DSI\n");
		goto err0;
	}

	FUNC6(ddata);

	in->ops.dsi->enable_hs(in, ddata->channel, false);

	r = FUNC7(ddata);
	if (r)
		goto err;

	r = FUNC5(ddata, &id1, &id2, &id3);
	if (r)
		goto err;

	r = FUNC4(ddata, DCS_BRIGHTNESS, 0xff);
	if (r)
		goto err;

	r = FUNC4(ddata, DCS_CTRL_DISPLAY,
			(1<<2) | (1<<5));	/* BL | BCTRL */
	if (r)
		goto err;

	r = FUNC4(ddata, MIPI_DCS_SET_PIXEL_FORMAT,
		MIPI_DCS_PIXEL_FMT_24BIT);
	if (r)
		goto err;

	r = FUNC3(ddata, MIPI_DCS_SET_DISPLAY_ON);
	if (r)
		goto err;

	r = FUNC0(ddata, ddata->te_enabled);
	if (r)
		goto err;

	r = in->ops.dsi->enable_video_output(in, ddata->channel);
	if (r)
		goto err;

	ddata->enabled = 1;

	if (!ddata->intro_printed) {
		FUNC2(&ddata->pdev->dev, "panel revision %02x.%02x.%02x\n",
			id1, id2, id3);
		ddata->intro_printed = true;
	}

	in->ops.dsi->enable_hs(in, ddata->channel, true);

	return 0;
err:
	FUNC1(&ddata->pdev->dev, "error while enabling panel, issuing HW reset\n");

	FUNC6(ddata);

	in->ops.dsi->disable(in, true, false);
err0:
	return r;
}