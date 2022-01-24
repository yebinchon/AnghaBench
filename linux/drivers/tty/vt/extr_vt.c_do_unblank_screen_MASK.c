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
struct vc_data {scalar_t__ vc_mode; int /*<<< orphan*/  vc_num; TYPE_1__* vc_sw; } ;
struct TYPE_4__ {struct vc_data* d; } ;
struct TYPE_3__ {scalar_t__ (* con_blank ) (struct vc_data*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ KD_TEXT ; 
 int /*<<< orphan*/  VT_EVENT_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  blank_normal_wait ; 
 int /*<<< orphan*/  blank_state ; 
 int blankinterval ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ console_blanked ; 
 int /*<<< orphan*/  console_timer ; 
 int fg_console ; 
 scalar_t__ ignore_poke ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  oops_in_progress ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*) ; 
 scalar_t__ FUNC7 (struct vc_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vc_data*) ; 
 TYPE_2__* vc_cons ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(int leaving_gfx)
{
	struct vc_data *vc;

	/* This should now always be called from a "sane" (read: can schedule)
	 * context for the sake of the low level drivers, except in the special
	 * case of oops_in_progress
	 */
	if (!oops_in_progress)
		FUNC2();

	FUNC0();

	ignore_poke = 0;
	if (!console_blanked)
		return;
	if (!FUNC9(fg_console)) {
		/* impossible */
		FUNC4("unblank_screen: tty %d not allocated ??\n",
			fg_console + 1);
		return;
	}
	vc = vc_cons[fg_console].d;
	if (vc->vc_mode != KD_TEXT)
		return; /* but leave console_blanked != 0 */

	if (blankinterval) {
		FUNC3(&console_timer, jiffies + (blankinterval * HZ));
		blank_state = blank_normal_wait;
	}

	console_blanked = 0;
	if (vc->vc_sw->con_blank(vc, 0, leaving_gfx))
		/* Low-level driver cannot restore -> do it ourselves */
		FUNC8(vc);
	if (&console_blank_hook)
		FUNC1(0);
	FUNC6(vc);
	FUNC5(vc);
	FUNC10(VT_EVENT_UNBLANK, vc->vc_num, vc->vc_num);
}