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
struct tty_struct {int /*<<< orphan*/  termios_rwsem; scalar_t__ flow_change; TYPE_1__* ops; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* throttle ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_THROTTLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct tty_struct *tty)
{
	FUNC0(&tty->termios_rwsem);
	/* check TTY_THROTTLED first so it indicates our state */
	if (!FUNC2(TTY_THROTTLED, &tty->flags) &&
	    tty->ops->throttle)
		tty->ops->throttle(tty);
	tty->flow_change = 0;
	FUNC3(&tty->termios_rwsem);
}