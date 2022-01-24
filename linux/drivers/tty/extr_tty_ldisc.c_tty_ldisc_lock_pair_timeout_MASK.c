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
struct tty_struct {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  TTY_LDISC_HALTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct tty_struct*,unsigned long) ; 
 int FUNC2 (struct tty_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct tty_struct *tty, struct tty_struct *tty2,
			    unsigned long timeout)
{
	int ret;

	if (tty < tty2) {
		ret = FUNC1(tty, timeout);
		if (ret) {
			ret = FUNC2(tty2, timeout);
			if (!ret)
				FUNC3(tty);
		}
	} else {
		/* if this is possible, it has lots of implications */
		FUNC0(tty == tty2);
		if (tty2 && tty != tty2) {
			ret = FUNC1(tty2, timeout);
			if (ret) {
				ret = FUNC2(tty, timeout);
				if (!ret)
					FUNC3(tty2);
			}
		} else
			ret = FUNC1(tty, timeout);
	}

	if (!ret)
		return -EBUSY;

	FUNC4(TTY_LDISC_HALTED, &tty->flags);
	if (tty2)
		FUNC4(TTY_LDISC_HALTED, &tty2->flags);
	return 0;
}