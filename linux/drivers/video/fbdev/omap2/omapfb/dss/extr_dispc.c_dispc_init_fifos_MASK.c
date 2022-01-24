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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int* fifo_assignment; TYPE_1__* feat; int /*<<< orphan*/ * fifo_size; } ;
struct TYPE_3__ {int num_fifos; scalar_t__ has_writeback; scalar_t__ gfx_fifo_workaround; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_GLOBAL_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FEAT_REG_FIFOSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 size_t OMAP_DSS_GFX ; 
 size_t OMAP_DSS_WB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ dispc ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const,int const) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
	u32 size;
	int fifo;
	u8 start, end;
	u32 unit;
	int i;

	unit = FUNC7();

	FUNC9(FEAT_REG_FIFOSIZE, &start, &end);

	for (fifo = 0; fifo < dispc.feat->num_fifos; ++fifo) {
		size = FUNC2(FUNC0(fifo), start, end);
		size *= unit;
		dispc.fifo_size[fifo] = size;

		/*
		 * By default fifos are mapped directly to overlays, fifo 0 to
		 * ovl 0, fifo 1 to ovl 1, etc.
		 */
		dispc.fifo_assignment[fifo] = fifo;
	}

	/*
	 * The GFX fifo on OMAP4 is smaller than the other fifos. The small fifo
	 * causes problems with certain use cases, like using the tiler in 2D
	 * mode. The below hack swaps the fifos of GFX and WB planes, thus
	 * giving GFX plane a larger fifo. WB but should work fine with a
	 * smaller fifo.
	 */
	if (dispc.feat->gfx_fifo_workaround) {
		u32 v;

		v = FUNC5(DISPC_GLOBAL_BUFFER);

		v = FUNC1(v, 4, 2, 0); /* GFX BUF top to WB */
		v = FUNC1(v, 4, 5, 3); /* GFX BUF bottom to WB */
		v = FUNC1(v, 0, 26, 24); /* WB BUF top to GFX */
		v = FUNC1(v, 0, 29, 27); /* WB BUF bottom to GFX */

		FUNC6(DISPC_GLOBAL_BUFFER, v);

		dispc.fifo_assignment[OMAP_DSS_GFX] = OMAP_DSS_WB;
		dispc.fifo_assignment[OMAP_DSS_WB] = OMAP_DSS_GFX;
	}

	/*
	 * Setup default fifo thresholds.
	 */
	for (i = 0; i < FUNC8(); ++i) {
		u32 low, high;
		const bool use_fifomerge = false;
		const bool manual_update = false;

		FUNC3(i, &low, &high,
			use_fifomerge, manual_update);

		FUNC4(i, low, high);
	}

	if (dispc.feat->has_writeback) {
		u32 low, high;
		const bool use_fifomerge = false;
		const bool manual_update = false;

		FUNC3(OMAP_DSS_WB, &low, &high,
			use_fifomerge, manual_update);

		FUNC4(OMAP_DSS_WB, low, high);
	}
}