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
struct tty_struct {int /*<<< orphan*/  ldisc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tty_struct*,int /*<<< orphan*/ ) ; 

int FUNC2(struct tty_struct *tty, struct tty_struct *o_tty)
{
	int retval = FUNC1(tty, tty->ldisc);
	if (retval)
		return retval;

	if (o_tty) {
		/*
		 * Called without o_tty->ldisc_sem held, as o_tty has been
		 * just allocated and no one has a reference to it.
		 */
		retval = FUNC1(o_tty, o_tty->ldisc);
		if (retval) {
			FUNC0(tty, tty->ldisc);
			return retval;
		}
	}
	return 0;
}