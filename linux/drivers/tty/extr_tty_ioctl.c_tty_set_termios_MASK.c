#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ktermios {int dummy; } ;
struct tty_struct {int /*<<< orphan*/  termios_rwsem; struct ktermios termios; TYPE_2__* ops; TYPE_1__* driver; } ;
struct tty_ldisc {TYPE_3__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_termios ) (struct tty_struct*,struct ktermios*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_termios ) (struct tty_struct*,struct ktermios*) ;} ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ subtype; } ;

/* Variables and functions */
 scalar_t__ PTY_TYPE_MASTER ; 
 scalar_t__ TTY_DRIVER_TYPE_PTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_ldisc*) ; 
 struct tty_ldisc* FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct ktermios*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct tty_struct *tty, struct ktermios *new_termios)
{
	struct ktermios old_termios;
	struct tty_ldisc *ld;

	FUNC0(tty->driver->type == TTY_DRIVER_TYPE_PTY &&
		tty->driver->subtype == PTY_TYPE_MASTER);
	/*
	 *	Perform the actual termios internal changes under lock.
	 */


	/* FIXME: we need to decide on some locking/ordering semantics
	   for the set_termios notification eventually */
	FUNC1(&tty->termios_rwsem);
	old_termios = tty->termios;
	tty->termios = *new_termios;
	FUNC7(tty, &old_termios);

	if (tty->ops->set_termios)
		tty->ops->set_termios(tty, &old_termios);
	else
		FUNC6(&tty->termios, &old_termios);

	ld = FUNC5(tty);
	if (ld != NULL) {
		if (ld->ops->set_termios)
			ld->ops->set_termios(tty, &old_termios);
		FUNC4(ld);
	}
	FUNC8(&tty->termios_rwsem);
	return 0;
}