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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct platform_device {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {struct omap_overlay_manager* manager; } ;
struct TYPE_2__ {int x_res; } ;
struct dsi_data {int pix_fmt; scalar_t__ mode; TYPE_1__ timings; struct omap_dss_device output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MIPI_DSI_PACKED_PIXEL_STREAM_16 ; 
 int /*<<< orphan*/  MIPI_DSI_PACKED_PIXEL_STREAM_18 ; 
 int /*<<< orphan*/  MIPI_DSI_PACKED_PIXEL_STREAM_24 ; 
 int /*<<< orphan*/  MIPI_DSI_PIXEL_STREAM_3BYTE_18 ; 
#define  OMAP_DSS_DSI_FMT_RGB565 131 
#define  OMAP_DSS_DSI_FMT_RGB666 130 
#define  OMAP_DSS_DSI_FMT_RGB666_PACKED 129 
#define  OMAP_DSS_DSI_FMT_RGB888 128 
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC4 (struct platform_device*,struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct omap_overlay_manager*) ; 
 struct platform_device* FUNC6 (struct omap_dss_device*) ; 
 struct dsi_data* FUNC7 (struct platform_device*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct omap_overlay_manager*) ; 

__attribute__((used)) static int FUNC13(struct omap_dss_device *dssdev, int channel)
{
	struct platform_device *dsidev = FUNC6(dssdev);
	struct dsi_data *dsi = FUNC7(dsidev);
	struct omap_overlay_manager *mgr = dsi->output.manager;
	int bpp = FUNC8(dsi->pix_fmt);
	struct omap_dss_device *out = &dsi->output;
	u8 data_type;
	u16 word_count;
	int r;

	if (out->manager == NULL) {
		FUNC2("failed to enable display: no output/manager\n");
		return -ENODEV;
	}

	r = FUNC4(dsidev, mgr);
	if (r)
		goto err_init_dispc;

	if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
		switch (dsi->pix_fmt) {
		case OMAP_DSS_DSI_FMT_RGB888:
			data_type = MIPI_DSI_PACKED_PIXEL_STREAM_24;
			break;
		case OMAP_DSS_DSI_FMT_RGB666:
			data_type = MIPI_DSI_PIXEL_STREAM_3BYTE_18;
			break;
		case OMAP_DSS_DSI_FMT_RGB666_PACKED:
			data_type = MIPI_DSI_PACKED_PIXEL_STREAM_18;
			break;
		case OMAP_DSS_DSI_FMT_RGB565:
			data_type = MIPI_DSI_PACKED_PIXEL_STREAM_16;
			break;
		default:
			r = -EINVAL;
			goto err_pix_fmt;
		}

		FUNC9(dsidev, false);
		FUNC10(dsidev, channel, false);

		/* MODE, 1 = video mode */
		FUNC3(dsidev, FUNC1(channel), 1, 4, 4);

		word_count = FUNC0(dsi->timings.x_res * bpp, 8);

		FUNC11(dsidev, channel, data_type,
				word_count, 0);

		FUNC10(dsidev, channel, true);
		FUNC9(dsidev, true);
	}

	r = FUNC12(mgr);
	if (r)
		goto err_mgr_enable;

	return 0;

err_mgr_enable:
	if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
		FUNC9(dsidev, false);
		FUNC10(dsidev, channel, false);
	}
err_pix_fmt:
	FUNC5(dsidev, mgr);
err_init_dispc:
	return r;
}