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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct omap_video_timings {int x_res; int y_res; scalar_t__ vbp; scalar_t__ vsw; scalar_t__ vfp; } ;
struct omap_dss_writeback_info {int /*<<< orphan*/  color_mode; int /*<<< orphan*/  rotation_type; int /*<<< orphan*/  pre_mult_alpha; int /*<<< orphan*/  mirror; int /*<<< orphan*/  rotation; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  buf_width; int /*<<< orphan*/  p_uv_addr; int /*<<< orphan*/  paddr; } ;
typedef  enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef  enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 
#define  OMAP_DSS_COLOR_ARGB16 135 
#define  OMAP_DSS_COLOR_ARGB16_1555 134 
#define  OMAP_DSS_COLOR_RGB12U 133 
#define  OMAP_DSS_COLOR_RGB16 132 
#define  OMAP_DSS_COLOR_RGB24P 131 
#define  OMAP_DSS_COLOR_RGBA16 130 
#define  OMAP_DSS_COLOR_RGBX16 129 
#define  OMAP_DSS_COLOR_XRGB16_1555 128 
 int OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA ; 
 int OMAP_DSS_OVL_CAP_SCALE ; 
 int OMAP_DSS_WB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int const,struct omap_video_timings const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,int) ; 

int FUNC9(const struct omap_dss_writeback_info *wi,
		bool mem_to_mem, const struct omap_video_timings *mgr_timings)
{
	int r;
	u32 l;
	enum omap_plane plane = OMAP_DSS_WB;
	const int pos_x = 0, pos_y = 0;
	const u8 zorder = 0, global_alpha = 0;
	const bool replication = false;
	bool truncation;
	int in_width = mgr_timings->x_res;
	int in_height = mgr_timings->y_res;
	enum omap_overlay_caps caps =
		OMAP_DSS_OVL_CAP_SCALE | OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA;

	FUNC2("dispc_wb_setup, pa %x, pa_uv %x, %d,%d -> %dx%d, cmode %x, "
		"rot %d, mir %d\n", wi->paddr, wi->p_uv_addr, in_width,
		in_height, wi->width, wi->height, wi->color_mode, wi->rotation,
		wi->mirror);

	r = FUNC5(plane, caps, wi->paddr, wi->p_uv_addr,
		wi->buf_width, pos_x, pos_y, in_width, in_height, wi->width,
		wi->height, wi->color_mode, wi->rotation, wi->mirror, zorder,
		wi->pre_mult_alpha, global_alpha, wi->rotation_type,
		replication, mgr_timings, mem_to_mem);

	switch (wi->color_mode) {
	case OMAP_DSS_COLOR_RGB16:
	case OMAP_DSS_COLOR_RGB24P:
	case OMAP_DSS_COLOR_ARGB16:
	case OMAP_DSS_COLOR_RGBA16:
	case OMAP_DSS_COLOR_RGB12U:
	case OMAP_DSS_COLOR_ARGB16_1555:
	case OMAP_DSS_COLOR_XRGB16_1555:
	case OMAP_DSS_COLOR_RGBX16:
		truncation = true;
		break;
	default:
		truncation = false;
		break;
	}

	/* setup extra DISPC_WB_ATTRIBUTES */
	l = FUNC6(FUNC0(plane));
	l = FUNC3(l, truncation, 10, 10);	/* TRUNCATIONENABLE */
	l = FUNC3(l, mem_to_mem, 19, 19);	/* WRITEBACKMODE */
	if (mem_to_mem)
		l = FUNC3(l, 1, 26, 24);	/* CAPTUREMODE */
	else
		l = FUNC3(l, 0, 26, 24);	/* CAPTUREMODE */
	FUNC7(FUNC0(plane), l);

	if (mem_to_mem) {
		/* WBDELAYCOUNT */
		FUNC4(FUNC1(plane), 0, 7, 0);
	} else {
		int wbdelay;

		wbdelay = FUNC8(mgr_timings->vfp + mgr_timings->vsw +
			mgr_timings->vbp, 255);

		/* WBDELAYCOUNT */
		FUNC4(FUNC1(plane), wbdelay, 7, 0);
	}

	return r;
}