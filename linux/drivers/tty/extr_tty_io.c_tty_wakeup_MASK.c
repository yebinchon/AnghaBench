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
struct tty_struct {int /*<<< orphan*/  write_wait; int /*<<< orphan*/  flags; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_wakeup ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLOUT ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_ldisc*) ; 
 struct tty_ldisc* FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct tty_struct *tty)
{
	struct tty_ldisc *ld;

	if (FUNC1(TTY_DO_WRITE_WAKEUP, &tty->flags)) {
		ld = FUNC3(tty);
		if (ld) {
			if (ld->ops->write_wakeup)
				ld->ops->write_wakeup(tty);
			FUNC2(ld);
		}
	}
	FUNC4(&tty->write_wait, EPOLLOUT);
}