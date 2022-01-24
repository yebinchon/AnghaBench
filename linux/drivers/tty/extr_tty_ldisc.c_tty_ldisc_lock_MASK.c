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
struct tty_struct {int /*<<< orphan*/  flags; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  TTY_LDISC_CHANGING ; 
 int /*<<< orphan*/  TTY_LDISC_HALTED ; 
 int FUNC0 (struct tty_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct tty_struct *tty, unsigned long timeout)
{
	int ret;

	/* Kindly asking blocked readers to release the read side */
	FUNC1(TTY_LDISC_CHANGING, &tty->flags);
	FUNC2(&tty->read_wait);
	FUNC2(&tty->write_wait);

	ret = FUNC0(tty, timeout);
	if (!ret)
		return -EBUSY;
	FUNC1(TTY_LDISC_HALTED, &tty->flags);
	return 0;
}