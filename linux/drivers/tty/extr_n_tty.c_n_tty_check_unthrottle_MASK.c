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
struct tty_struct {int /*<<< orphan*/  link; TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ TTY_DRIVER_TYPE_PTY ; 
 scalar_t__ TTY_THRESHOLD_UNTHROTTLE ; 
 int /*<<< orphan*/  TTY_UNTHROTTLE_SAFE ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty)
{
	if (tty->driver->type == TTY_DRIVER_TYPE_PTY) {
		if (FUNC1(tty) > TTY_THRESHOLD_UNTHROTTLE)
			return;
		FUNC2(tty);
		FUNC5(tty->link);
		return;
	}

	/* If there is enough space in the read buffer now, let the
	 * low-level driver know. We use chars_in_buffer() to
	 * check the buffer, as it now knows about canonical mode.
	 * Otherwise, if the driver is throttled and the line is
	 * longer than TTY_THRESHOLD_UNTHROTTLE in canonical mode,
	 * we won't get any more characters.
	 */

	while (1) {
		int unthrottled;
		FUNC3(tty, TTY_UNTHROTTLE_SAFE);
		if (FUNC1(tty) > TTY_THRESHOLD_UNTHROTTLE)
			break;
		FUNC2(tty);
		unthrottled = FUNC4(tty);
		if (!unthrottled)
			break;
	}
	FUNC0(tty, 0);
}