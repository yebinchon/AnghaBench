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
typedef  enum omapfb_update_mode { ____Placeholder_omapfb_update_mode } omapfb_update_mode ;
struct TYPE_2__ {int update_mode; } ;

/* Variables and functions */
 int EINVAL ; 
#define  OMAPFB_AUTO_UPDATE 129 
#define  OMAPFB_UPDATE_DISABLED 128 
 int /*<<< orphan*/  OMAP_LCDC_IRQ_DONE ; 
 int /*<<< orphan*/  OMAP_LCDC_LOAD_FRAME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ lcdc ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(enum omapfb_update_mode mode)
{
	int r = 0;

	if (mode != lcdc.update_mode) {
		switch (mode) {
		case OMAPFB_AUTO_UPDATE:
			FUNC7();
			FUNC3();

			/* Setup and start LCD DMA */
			FUNC6();

			FUNC5(OMAP_LCDC_LOAD_FRAME);
			FUNC2(OMAP_LCDC_IRQ_DONE);
			/* This will start the actual DMA transfer */
			FUNC1();
			lcdc.update_mode = mode;
			break;
		case OMAPFB_UPDATE_DISABLED:
			FUNC0();
			FUNC4();
			lcdc.update_mode = mode;
			break;
		default:
			r = -EINVAL;
		}
	}

	return r;
}