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
struct TYPE_2__ {unsigned int c_cflag; } ;
struct tty_struct {scalar_t__ hw_stopped; TYPE_1__ termios; struct serial_state* driver_data; } ;
struct serial_state {int MCR; int /*<<< orphan*/  open_wait; } ;
struct ktermios {unsigned int c_cflag; } ;

/* Variables and functions */
 unsigned int CBAUD ; 
 int CLOCAL ; 
 int CRTSCTS ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int SER_DTR ; 
 int SER_RTS ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,struct serial_state*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct tty_struct *tty, struct ktermios *old_termios)
{
	struct serial_state *info = tty->driver_data;
	unsigned long flags;
	unsigned int cflag = tty->termios.c_cflag;

	FUNC2(tty, info, old_termios);

	/* Handle transition to B0 status */
	if ((old_termios->c_cflag & CBAUD) && !(cflag & CBAUD)) {
		info->MCR &= ~(SER_DTR|SER_RTS);
		FUNC4(flags);
		FUNC6(info->MCR);
		FUNC3(flags);
	}

	/* Handle transition away from B0 status */
	if (!(old_termios->c_cflag & CBAUD) && (cflag & CBAUD)) {
		info->MCR |= SER_DTR;
		if (!FUNC1(tty) || !FUNC7(tty))
			info->MCR |= SER_RTS;
		FUNC4(flags);
		FUNC6(info->MCR);
		FUNC3(flags);
	}

	/* Handle turning off CRTSCTS */
	if ((old_termios->c_cflag & CRTSCTS) && !FUNC1(tty)) {
		tty->hw_stopped = 0;
		FUNC5(tty);
	}

#if 0
	/*
	 * No need to wake up processes in open wait, since they
	 * sample the CLOCAL flag once, and don't recheck it.
	 * XXX  It's not clear whether the current behavior is correct
	 * or not.  Hence, this may change.....
	 */
	if (!(old_termios->c_cflag & CLOCAL) && C_CLOCAL(tty))
		wake_up_interruptible(&info->open_wait);
#endif
}