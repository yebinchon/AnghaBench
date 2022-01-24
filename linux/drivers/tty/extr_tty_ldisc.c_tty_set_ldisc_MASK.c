#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  port; int /*<<< orphan*/  termios_rwsem; TYPE_2__* ops; struct tty_ldisc* ldisc; int /*<<< orphan*/  flags; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_ldisc ) (struct tty_struct*) ;} ;
struct TYPE_3__ {int num; } ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct tty_ldisc*) ; 
 int FUNC1 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  TTY_HUPPED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,struct tty_ldisc*) ; 
 struct tty_ldisc* FUNC7 (struct tty_struct*,int) ; 
 int FUNC8 (struct tty_struct*,int) ; 
 int FUNC9 (struct tty_struct*,struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_struct*,struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct tty_struct *tty, int disc)
{
	int retval;
	struct tty_ldisc *old_ldisc, *new_ldisc;

	new_ldisc = FUNC7(tty, disc);
	if (FUNC0(new_ldisc))
		return FUNC1(new_ldisc);

	FUNC13(tty);
	retval = FUNC8(tty, 5 * HZ);
	if (retval)
		goto err;

	if (!tty->ldisc) {
		retval = -EIO;
		goto out;
	}

	/* Check the no-op case */
	if (tty->ldisc->ops->num == disc)
		goto out;

	if (FUNC4(TTY_HUPPED, &tty->flags)) {
		/* We were raced by hangup */
		retval = -EIO;
		goto out;
	}

	old_ldisc = tty->ldisc;

	/* Shutdown the old discipline. */
	FUNC6(tty, old_ldisc);

	/* Now set up the new line discipline. */
	tty->ldisc = new_ldisc;
	FUNC14(tty, disc);

	retval = FUNC9(tty, new_ldisc);
	if (retval < 0) {
		/* Back to the old one or N_TTY if we can't */
		FUNC10(new_ldisc);
		FUNC11(tty, old_ldisc);
	}

	if (tty->ldisc->ops->num != old_ldisc->ops->num && tty->ops->set_ldisc) {
		FUNC2(&tty->termios_rwsem);
		tty->ops->set_ldisc(tty);
		FUNC16(&tty->termios_rwsem);
	}

	/* At this point we hold a reference to the new ldisc and a
	   reference to the old ldisc, or we hold two references to
	   the old ldisc (if it was restored as part of error cleanup
	   above). In either case, releasing a single reference from
	   the old ldisc is correct. */
	new_ldisc = old_ldisc;
out:
	FUNC12(tty);

	/* Restart the work queue in case no characters kick it off. Safe if
	   already running */
	FUNC5(tty->port);
err:
	FUNC10(new_ldisc);	/* drop the extra reference */
	FUNC15(tty);
	return retval;
}