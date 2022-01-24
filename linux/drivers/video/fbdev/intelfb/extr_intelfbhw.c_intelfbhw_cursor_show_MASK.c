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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  physical; } ;
struct intelfb_info {int cursor_on; TYPE_1__ cursor; scalar_t__ mobile; scalar_t__ cursor_blanked; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURSOR_A_BASEADDR ; 
 int /*<<< orphan*/  CURSOR_A_CONTROL ; 
 int /*<<< orphan*/  CURSOR_CONTROL ; 
 int /*<<< orphan*/  CURSOR_ENABLE ; 
 int /*<<< orphan*/  CURSOR_MODE_64_4C_AX ; 
 int /*<<< orphan*/  CURSOR_MODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct intelfb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct intelfb_info *dinfo)
{
	u32 tmp;

#if VERBOSE > 0
	DBG_MSG("intelfbhw_cursor_show\n");
#endif

	dinfo->cursor_on = 1;

	if (dinfo->cursor_blanked)
		return;

	if (dinfo->mobile || FUNC2(dinfo)) {
		if (!dinfo->cursor.physical)
			return;
		tmp = FUNC1(CURSOR_A_CONTROL);
		tmp &= ~CURSOR_MODE_MASK;
		tmp |= CURSOR_MODE_64_4C_AX;
		FUNC3(CURSOR_A_CONTROL, tmp);
		/* Flush changes */
		FUNC3(CURSOR_A_BASEADDR, dinfo->cursor.physical);
	} else {
		tmp = FUNC1(CURSOR_CONTROL);
		tmp |= CURSOR_ENABLE;
		FUNC3(CURSOR_CONTROL, tmp);
	}
}