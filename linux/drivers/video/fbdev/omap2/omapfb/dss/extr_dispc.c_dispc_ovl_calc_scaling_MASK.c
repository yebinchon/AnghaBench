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
typedef  int u16 ;
struct omap_video_timings {scalar_t__ pixelclock; } ;
typedef  enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;
typedef  enum omap_dss_rotation_type { ____Placeholder_omap_dss_rotation_type } omap_dss_rotation_type ;
typedef  enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;
struct TYPE_4__ {TYPE_1__* feat; } ;
struct TYPE_3__ {int (* calc_scaling ) (unsigned long,unsigned long,struct omap_video_timings const*,int,int,int,int,int,int*,int*,int*,int*,int*,int,unsigned long*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FEAT_BURST_2D ; 
 int /*<<< orphan*/  FEAT_PARAM_DOWNSCALE ; 
 int OMAP_DSS_COLOR_CLUT1 ; 
 int OMAP_DSS_COLOR_CLUT2 ; 
 int OMAP_DSS_COLOR_CLUT4 ; 
 int OMAP_DSS_COLOR_CLUT8 ; 
 int OMAP_DSS_OVL_CAP_SCALE ; 
 int OMAP_DSS_ROT_TILER ; 
 TYPE_2__ dispc ; 
 unsigned long FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned long,unsigned long,struct omap_video_timings const*,int,int,int,int,int,int*,int*,int*,int*,int*,int,unsigned long*,int) ; 

__attribute__((used)) static int FUNC8(unsigned long pclk, unsigned long lclk,
		enum omap_overlay_caps caps,
		const struct omap_video_timings *mgr_timings,
		u16 width, u16 height, u16 out_width, u16 out_height,
		enum omap_color_mode color_mode, bool *five_taps,
		int *x_predecim, int *y_predecim, u16 pos_x,
		enum omap_dss_rotation_type rotation_type, bool mem_to_mem)
{
	const int maxdownscale = FUNC5(FEAT_PARAM_DOWNSCALE);
	const int max_decim_limit = 16;
	unsigned long core_clk = 0;
	int decim_x, decim_y, ret;

	if (width == out_width && height == out_height)
		return 0;

	if (!mem_to_mem && (pclk == 0 || mgr_timings->pixelclock == 0)) {
		FUNC3("cannot calculate scaling settings: pclk is zero\n");
		return -EINVAL;
	}

	if ((caps & OMAP_DSS_OVL_CAP_SCALE) == 0)
		return -EINVAL;

	if (mem_to_mem) {
		*x_predecim = *y_predecim = 1;
	} else {
		*x_predecim = max_decim_limit;
		*y_predecim = (rotation_type == OMAP_DSS_ROT_TILER &&
				FUNC6(FEAT_BURST_2D)) ?
				2 : max_decim_limit;
	}

	if (color_mode == OMAP_DSS_COLOR_CLUT1 ||
	    color_mode == OMAP_DSS_COLOR_CLUT2 ||
	    color_mode == OMAP_DSS_COLOR_CLUT4 ||
	    color_mode == OMAP_DSS_COLOR_CLUT8) {
		*x_predecim = 1;
		*y_predecim = 1;
		*five_taps = false;
		return 0;
	}

	decim_x = FUNC1(FUNC1(width, out_width), maxdownscale);
	decim_y = FUNC1(FUNC1(height, out_height), maxdownscale);

	if (decim_x > *x_predecim || out_width > width * 8)
		return -EINVAL;

	if (decim_y > *y_predecim || out_height > height * 8)
		return -EINVAL;

	ret = dispc.feat->calc_scaling(pclk, lclk, mgr_timings, width, height,
		out_width, out_height, color_mode, five_taps,
		x_predecim, y_predecim, &decim_x, &decim_y, pos_x, &core_clk,
		mem_to_mem);
	if (ret)
		return ret;

	FUNC2("%dx%d -> %dx%d (%d.%02d x %d.%02d), decim %dx%d %dx%d (%d.%02d x %d.%02d), taps %d, req clk %lu, cur clk %lu\n",
		width, height,
		out_width, out_height,
		out_width / width, FUNC0(out_width, width),
		out_height / height, FUNC0(out_height, height),

		decim_x, decim_y,
		width / decim_x, height / decim_y,
		out_width / (width / decim_x), FUNC0(out_width, width / decim_x),
		out_height / (height / decim_y), FUNC0(out_height, height / decim_y),

		*five_taps ? 5 : 3,
		core_clk, FUNC4());

	if (!core_clk || core_clk > FUNC4()) {
		FUNC3("failed to set up scaling, "
			"required core clk rate = %lu Hz, "
			"current core clk rate = %lu Hz\n",
			core_clk, FUNC4());
		return -EINVAL;
	}

	*x_predecim = decim_x;
	*y_predecim = decim_y;
	return 0;
}