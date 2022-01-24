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
struct work_struct {int dummy; } ;
struct vc_data {scalar_t__ vc_mode; TYPE_1__* vc_sw; } ;
struct TYPE_4__ {struct vc_data* d; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* con_scrolldelta ) (struct vc_data*,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ KD_TEXT ; 
 scalar_t__ blank_timer_expired ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ do_poke_blanked_console ; 
 size_t fg_console ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ scrollback_delta ; 
 int /*<<< orphan*/  FUNC8 (struct vc_data*,scalar_t__) ; 
 TYPE_2__* vc_cons ; 
 scalar_t__ FUNC9 (size_t) ; 
 size_t want_console ; 

__attribute__((used)) static void FUNC10(struct work_struct *ignored)
{
	FUNC2();

	if (want_console >= 0) {
		if (want_console != fg_console &&
		    FUNC9(want_console)) {
			FUNC5(vc_cons[fg_console].d);
			FUNC0(vc_cons[want_console].d);
			/* we only changed when the console had already
			   been allocated - a new console is not created
			   in an interrupt routine */
		}
		want_console = -1;
	}
	if (do_poke_blanked_console) { /* do not unblank for a LED change */
		do_poke_blanked_console = 0;
		FUNC7();
	}
	if (scrollback_delta) {
		struct vc_data *vc = vc_cons[fg_console].d;
		FUNC1();
		if (vc->vc_mode == KD_TEXT && vc->vc_sw->con_scrolldelta)
			vc->vc_sw->con_scrolldelta(vc, scrollback_delta);
		scrollback_delta = 0;
	}
	if (blank_timer_expired) {
		FUNC4(0);
		blank_timer_expired = 0;
	}
	FUNC6(vc_cons[fg_console].d);

	FUNC3();
}