#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct async_icount {scalar_t__ dsr; scalar_t__ dcd; scalar_t__ rng; } ;
struct gb_tty {scalar_t__ disconnected; int /*<<< orphan*/  wioctl; int /*<<< orphan*/  read_lock; struct async_icount oldcount; struct async_icount iocount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 unsigned long TIOCM_CD ; 
 unsigned long TIOCM_DSR ; 
 unsigned long TIOCM_RI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC8(struct gb_tty *gb_tty, unsigned long arg)
{
	int retval = 0;
	FUNC0(wait, current);
	struct async_icount old;
	struct async_icount new;

	if (!(arg & (TIOCM_DSR | TIOCM_RI | TIOCM_CD)))
		return -EINVAL;

	do {
		FUNC6(&gb_tty->read_lock);
		old = gb_tty->oldcount;
		new = gb_tty->iocount;
		gb_tty->oldcount = new;
		FUNC7(&gb_tty->read_lock);

		if ((arg & TIOCM_DSR) && (old.dsr != new.dsr))
			break;
		if ((arg & TIOCM_CD) && (old.dcd != new.dcd))
			break;
		if ((arg & TIOCM_RI) && (old.rng != new.rng))
			break;

		FUNC1(&gb_tty->wioctl, &wait);
		FUNC4(TASK_INTERRUPTIBLE);
		FUNC3();
		FUNC2(&gb_tty->wioctl, &wait);
		if (gb_tty->disconnected) {
			if (arg & TIOCM_CD)
				break;
			retval = -ENODEV;
		} else if (FUNC5(current)) {
			retval = -ERESTARTSYS;
		}
	} while (!retval);

	return retval;
}