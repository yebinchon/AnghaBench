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
struct tty_struct {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  sel_mode; scalar_t__ ye; scalar_t__ xe; scalar_t__ ys; scalar_t__ xs; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; TYPE_1__ sel; int /*<<< orphan*/  tty; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  TIOCL_SELCHAR ; 
 int /*<<< orphan*/  WORK_CPU_UNBOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ speakup_sel_work ; 
 scalar_t__ spk_xe ; 
 scalar_t__ spk_xs ; 
 scalar_t__ spk_ye ; 
 scalar_t__ spk_ys ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct tty_struct *tty)
{
	/* we get kref here first in order to avoid a subtle race when
	 * cancelling selection work. getting kref first establishes the
	 * invariant that if speakup_sel_work.tty is not NULL when
	 * speakup_cancel_selection() is called, it must be the case that a put
	 * kref is pending.
	 */
	FUNC2(tty);
	if (FUNC0(&speakup_sel_work.tty, NULL, tty)) {
		FUNC3(tty);
		return -EBUSY;
	}
	/* now we have the 'lock' by setting tty member of
	 * speakup_selection_work. wmb() ensures that writes to
	 * speakup_sel_work don't happen before cmpxchg() above.
	 */
	FUNC4();

	speakup_sel_work.sel.xs = spk_xs + 1;
	speakup_sel_work.sel.ys = spk_ys + 1;
	speakup_sel_work.sel.xe = spk_xe + 1;
	speakup_sel_work.sel.ye = spk_ye + 1;
	speakup_sel_work.sel.sel_mode = TIOCL_SELCHAR;

	FUNC1(WORK_CPU_UNBOUND, &speakup_sel_work.work);

	return 0;
}