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
typedef  int u8 ;
typedef  enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef  enum omap_dss_rotation_type { ____Placeholder_omap_dss_rotation_type } omap_dss_rotation_type ;
typedef  enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FEAT_ROWREPEATENABLE ; 
 int OMAP_DSS_COLOR_NV12 ; 
 int OMAP_DSS_COLOR_UYVY ; 
 int OMAP_DSS_COLOR_YUV2 ; 
#define  OMAP_DSS_ROT_0 131 
#define  OMAP_DSS_ROT_180 130 
#define  OMAP_DSS_ROT_270 129 
#define  OMAP_DSS_ROT_90 128 
 int OMAP_DSS_ROT_TILER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(enum omap_plane plane, u8 rotation,
		enum omap_dss_rotation_type rotation_type,
		bool mirroring, enum omap_color_mode color_mode)
{
	bool row_repeat = false;
	int vidrot = 0;

	if (color_mode == OMAP_DSS_COLOR_YUV2 ||
			color_mode == OMAP_DSS_COLOR_UYVY) {

		if (mirroring) {
			switch (rotation) {
			case OMAP_DSS_ROT_0:
				vidrot = 2;
				break;
			case OMAP_DSS_ROT_90:
				vidrot = 1;
				break;
			case OMAP_DSS_ROT_180:
				vidrot = 0;
				break;
			case OMAP_DSS_ROT_270:
				vidrot = 3;
				break;
			}
		} else {
			switch (rotation) {
			case OMAP_DSS_ROT_0:
				vidrot = 0;
				break;
			case OMAP_DSS_ROT_90:
				vidrot = 1;
				break;
			case OMAP_DSS_ROT_180:
				vidrot = 2;
				break;
			case OMAP_DSS_ROT_270:
				vidrot = 3;
				break;
			}
		}

		if (rotation == OMAP_DSS_ROT_90 || rotation == OMAP_DSS_ROT_270)
			row_repeat = true;
		else
			row_repeat = false;
	}

	/*
	 * OMAP4/5 Errata i631:
	 * NV12 in 1D mode must use ROTATION=1. Otherwise DSS will fetch extra
	 * rows beyond the framebuffer, which may cause OCP error.
	 */
	if (color_mode == OMAP_DSS_COLOR_NV12 &&
			rotation_type != OMAP_DSS_ROT_TILER)
		vidrot = 1;

	FUNC1(FUNC0(plane), vidrot, 13, 12);
	if (FUNC2(FEAT_ROWREPEATENABLE))
		FUNC1(FUNC0(plane),
			row_repeat ? 1 : 0, 18, 18);

	if (color_mode == OMAP_DSS_COLOR_NV12) {
		bool doublestride = (rotation_type == OMAP_DSS_ROT_TILER) &&
					(rotation == OMAP_DSS_ROT_0 ||
					rotation == OMAP_DSS_ROT_180);
		/* DOUBLESTRIDE */
		FUNC1(FUNC0(plane), doublestride, 22, 22);
	}

}