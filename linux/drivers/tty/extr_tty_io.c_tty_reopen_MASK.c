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
struct TYPE_2__ {int /*<<< orphan*/  c_line; } ;
struct tty_struct {int /*<<< orphan*/  count; TYPE_1__ termios; int /*<<< orphan*/  ldisc; int /*<<< orphan*/  flags; struct tty_driver* driver; } ;
struct tty_ldisc {int dummy; } ;
struct tty_driver {scalar_t__ type; scalar_t__ subtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EAGAIN ; 
 int EBUSY ; 
 int EIO ; 
 int HZ ; 
 scalar_t__ PTY_TYPE_MASTER ; 
 scalar_t__ TTY_DRIVER_TYPE_PTY ; 
 int /*<<< orphan*/  TTY_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_ldisc*) ; 
 int FUNC3 (struct tty_struct*,int) ; 
 struct tty_ldisc* FUNC4 (struct tty_struct*) ; 
 int FUNC5 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty)
{
	struct tty_driver *driver = tty->driver;
	struct tty_ldisc *ld;
	int retval = 0;

	if (driver->type == TTY_DRIVER_TYPE_PTY &&
	    driver->subtype == PTY_TYPE_MASTER)
		return -EIO;

	if (!tty->count)
		return -EAGAIN;

	if (FUNC1(TTY_EXCLUSIVE, &tty->flags) && !FUNC0(CAP_SYS_ADMIN))
		return -EBUSY;

	ld = FUNC4(tty);
	if (ld) {
		FUNC2(ld);
	} else {
		retval = FUNC3(tty, 5 * HZ);
		if (retval)
			return retval;

		if (!tty->ldisc)
			retval = FUNC5(tty, tty->termios.c_line);
		FUNC6(tty);
	}

	if (retval == 0)
		tty->count++;

	return retval;
}