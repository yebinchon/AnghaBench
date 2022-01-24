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
struct TYPE_2__ {void (* lcdc_callback ) (void*) ;int bus_pick_width; int /*<<< orphan*/  lock; int /*<<< orphan*/  vsync_dma_pending; scalar_t__ tearsync_mode; int /*<<< orphan*/  tearsync_line; int /*<<< orphan*/  bus_pick_count; int /*<<< orphan*/  fck; void* lcdc_callback_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOSSI_INIT1_REG ; 
 int /*<<< orphan*/  WR_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ sossi ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(int width, int height,
				void (callback)(void *data), void *data)
{
	FUNC0(callback == NULL);

	sossi.lcdc_callback = callback;
	sossi.lcdc_callback_data = data;

	FUNC3(sossi.fck);
	FUNC6(WR_ACCESS);
	FUNC1(sossi.bus_pick_count, sossi.bus_pick_width);
	FUNC2(sossi.tearsync_mode, sossi.tearsync_line);
	/* CMD#/DATA */
	FUNC7(SOSSI_INIT1_REG, 1 << 18);
	FUNC5(width * height * sossi.bus_pick_width / 8);

	FUNC8();
	if (sossi.tearsync_mode) {
		/*
		 * Wait for the sync signal and start the transfer only
		 * then. We can't seem to be able to use HW sync DMA for
		 * this since LCD DMA shows huge latencies, as if it
		 * would ignore some of the DMA requests from SoSSI.
		 */
		unsigned long flags;

		FUNC9(&sossi.lock, flags);
		sossi.vsync_dma_pending++;
		FUNC10(&sossi.lock, flags);
	} else
		/* Just start the transfer right away. */
		FUNC4();
}