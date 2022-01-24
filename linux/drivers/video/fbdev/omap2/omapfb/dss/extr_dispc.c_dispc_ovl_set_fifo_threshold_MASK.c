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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
struct TYPE_4__ {TYPE_1__* feat; } ;
struct TYPE_3__ {scalar_t__ set_max_preload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FEAT_PRELOAD ; 
 int /*<<< orphan*/  FEAT_REG_FIFOHIGHTHRESHOLD ; 
 int /*<<< orphan*/  FEAT_REG_FIFOLOWTHRESHOLD ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OMAP_DSS_WB ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_2__ dispc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int) ; 

void FUNC11(enum omap_plane plane, u32 low, u32 high)
{
	u8 hi_start, hi_end, lo_start, lo_end;
	u32 unit;

	unit = FUNC7();

	FUNC5(low % unit != 0);
	FUNC5(high % unit != 0);

	low /= unit;
	high /= unit;

	FUNC8(FEAT_REG_FIFOHIGHTHRESHOLD, &hi_start, &hi_end);
	FUNC8(FEAT_REG_FIFOLOWTHRESHOLD, &lo_start, &lo_end);

	FUNC2("fifo(%d) threshold (bytes), old %u/%u, new %u/%u\n",
			plane,
			FUNC4(FUNC0(plane),
				lo_start, lo_end) * unit,
			FUNC4(FUNC0(plane),
				hi_start, hi_end) * unit,
			low * unit, high * unit);

	FUNC6(FUNC0(plane),
			FUNC3(high, hi_start, hi_end) |
			FUNC3(low, lo_start, lo_end));

	/*
	 * configure the preload to the pipeline's high threhold, if HT it's too
	 * large for the preload field, set the threshold to the maximum value
	 * that can be held by the preload register
	 */
	if (FUNC9(FEAT_PRELOAD) && dispc.feat->set_max_preload &&
			plane != OMAP_DSS_WB)
		FUNC6(FUNC1(plane), FUNC10(high, 0xfffu));
}