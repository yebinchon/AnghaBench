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
struct tty_struct {struct tty_ldisc* ldisc; int /*<<< orphan*/  ldisc_sem; } ;
struct tty_ldisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tty_ldisc*) ; 
 int N_TTY ; 
 int FUNC2 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,struct tty_ldisc*) ; 
 struct tty_ldisc* FUNC5 (struct tty_struct*,int) ; 
 int FUNC6 (struct tty_struct*,struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*,int) ; 

int FUNC9(struct tty_struct *tty, int disc)
{
	struct tty_ldisc *ld;
	int retval;

	FUNC3(&tty->ldisc_sem);
	ld = FUNC5(tty, disc);
	if (FUNC1(ld)) {
		FUNC0(disc == N_TTY);
		return FUNC2(ld);
	}

	if (tty->ldisc) {
		FUNC4(tty, tty->ldisc);
		FUNC7(tty->ldisc);
	}

	/* switch the line discipline */
	tty->ldisc = ld;
	FUNC8(tty, disc);
	retval = FUNC6(tty, tty->ldisc);
	if (retval) {
		FUNC7(tty->ldisc);
		tty->ldisc = NULL;
	}
	return retval;
}