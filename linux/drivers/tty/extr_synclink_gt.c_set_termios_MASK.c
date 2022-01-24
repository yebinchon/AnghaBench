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
struct tty_struct {scalar_t__ hw_stopped; TYPE_1__* driver; struct slgt_info* driver_data; } ;
struct slgt_info {int signals; int /*<<< orphan*/  lock; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CBAUD ; 
 int CRTSCTS ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int SerialSignal_DTR ; 
 int SerialSignal_RTS ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC9(struct tty_struct *tty, struct ktermios *old_termios)
{
	struct slgt_info *info = tty->driver_data;
	unsigned long flags;

	FUNC2(("%s set_termios\n", tty->driver->name));

	FUNC3(info);

	/* Handle transition to B0 status */
	if ((old_termios->c_cflag & CBAUD) && !FUNC0(tty)) {
		info->signals &= ~(SerialSignal_RTS | SerialSignal_DTR);
		FUNC5(&info->lock,flags);
		FUNC4(info);
		FUNC6(&info->lock,flags);
	}

	/* Handle transition away from B0 status */
	if (!(old_termios->c_cflag & CBAUD) && FUNC0(tty)) {
		info->signals |= SerialSignal_DTR;
		if (!FUNC1(tty) || !FUNC7(tty))
			info->signals |= SerialSignal_RTS;
		FUNC5(&info->lock,flags);
	 	FUNC4(info);
		FUNC6(&info->lock,flags);
	}

	/* Handle turning off CRTSCTS */
	if ((old_termios->c_cflag & CRTSCTS) && !FUNC1(tty)) {
		tty->hw_stopped = 0;
		FUNC8(tty);
	}
}