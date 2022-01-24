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
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tty; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ speakup_sel_work ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 struct tty_struct* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	struct tty_struct *tty;

	FUNC0(&speakup_sel_work.work);
	/* setting to null so that if work fails to run and we cancel it,
	 * we can run it again without getting EBUSY forever from there on.
	 * we need to use xchg here to avoid race with speakup_set_selection()
	 */
	tty = FUNC2(&speakup_sel_work.tty, NULL);
	if (tty)
		FUNC1(tty);
}