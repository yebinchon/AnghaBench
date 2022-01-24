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
struct TYPE_6__ {int /*<<< orphan*/  c_line; } ;
struct tty_struct {TYPE_3__ termios; scalar_t__ ldisc; TYPE_2__* driver; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  flags; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* hangup ) (struct tty_struct*) ;int /*<<< orphan*/  (* write_wakeup ) (struct tty_struct*) ;int /*<<< orphan*/  (* flush_buffer ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLLOUT ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  N_NULL ; 
 int /*<<< orphan*/  N_TTY ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int TTY_DRIVER_RESET_TERMIOS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 struct tty_ldisc* FUNC10 (struct tty_struct*) ; 
 scalar_t__ FUNC11 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC15(struct tty_struct *tty, bool reinit)
{
	struct tty_ldisc *ld;

	FUNC6(tty, "%p: hangup\n", tty->ldisc);

	ld = FUNC10(tty);
	if (ld != NULL) {
		if (ld->ops->flush_buffer)
			ld->ops->flush_buffer(tty);
		FUNC5(tty);
		if ((FUNC4(TTY_DO_WRITE_WAKEUP, &tty->flags)) &&
		    ld->ops->write_wakeup)
			ld->ops->write_wakeup(tty);
		if (ld->ops->hangup)
			ld->ops->hangup(tty);
		FUNC7(ld);
	}

	FUNC14(&tty->write_wait, EPOLLOUT);
	FUNC14(&tty->read_wait, EPOLLIN);

	/*
	 * Shutdown the current line discipline, and reset it to
	 * N_TTY if need be.
	 *
	 * Avoid racing set_ldisc or tty_ldisc_release
	 */
	FUNC9(tty, MAX_SCHEDULE_TIMEOUT);

	if (tty->driver->flags & TTY_DRIVER_RESET_TERMIOS)
		FUNC13(tty);

	if (tty->ldisc) {
		if (reinit) {
			if (FUNC11(tty, tty->termios.c_line) < 0 &&
			    FUNC11(tty, N_TTY) < 0)
				FUNC0(FUNC11(tty, N_NULL) < 0);
		} else
			FUNC8(tty);
	}
	FUNC12(tty);
}