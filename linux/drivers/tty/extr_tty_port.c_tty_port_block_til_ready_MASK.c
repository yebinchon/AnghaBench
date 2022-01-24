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
struct tty_struct {int dummy; } ;
struct tty_port {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  blocked_open; int /*<<< orphan*/  count; int /*<<< orphan*/  open_wait; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int ASYNC_HUP_NOTIFY ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (struct file*) ; 
 scalar_t__ FUNC10 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_struct*) ; 
 scalar_t__ FUNC12 (struct tty_port*) ; 
 scalar_t__ FUNC13 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC14 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC15 (struct tty_port*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct tty_struct*) ; 
 int /*<<< orphan*/  wait ; 

int FUNC17(struct tty_port *port,
				struct tty_struct *tty, struct file *filp)
{
	int do_clocal = 0, retval;
	unsigned long flags;
	FUNC2(wait);

	/* if non-blocking mode is set we can pass directly to open unless
	   the port has just hung up or is in another error state */
	if (FUNC10(tty)) {
		FUNC15(port, 1);
		return 0;
	}
	if (filp == NULL || (filp->f_flags & O_NONBLOCK)) {
		/* Indicate we are open */
		if (FUNC0(tty))
			FUNC14(port);
		FUNC15(port, 1);
		return 0;
	}

	if (FUNC1(tty))
		do_clocal = 1;

	/* Block waiting until we can proceed. We may need to wait for the
	   carrier, but we must also wait for any close that is in progress
	   before the next open may complete */

	retval = 0;

	/* The port lock protects the port counts */
	FUNC7(&port->lock, flags);
	port->count--;
	port->blocked_open++;
	FUNC8(&port->lock, flags);

	while (1) {
		/* Indicate we are open */
		if (FUNC0(tty) && FUNC13(port))
			FUNC14(port);

		FUNC4(&port->open_wait, &wait, TASK_INTERRUPTIBLE);
		/* Check for a hangup or uninitialised port.
							Return accordingly */
		if (FUNC9(filp) || !FUNC13(port)) {
			if (port->flags & ASYNC_HUP_NOTIFY)
				retval = -EAGAIN;
			else
				retval = -ERESTARTSYS;
			break;
		}
		/*
		 * Probe the carrier. For devices with no carrier detect
		 * tty_port_carrier_raised will always return true.
		 * Never ask drivers if CLOCAL is set, this causes troubles
		 * on some hardware.
		 */
		if (do_clocal || FUNC12(port))
			break;
		if (FUNC6(current)) {
			retval = -ERESTARTSYS;
			break;
		}
		FUNC16(tty);
		FUNC5();
		FUNC11(tty);
	}
	FUNC3(&port->open_wait, &wait);

	/* Update counts. A parallel hangup will have set count to zero and
	   we must not mess that up further */
	FUNC7(&port->lock, flags);
	if (!FUNC9(filp))
		port->count++;
	port->blocked_open--;
	FUNC8(&port->lock, flags);
	if (retval == 0)
		FUNC15(port, 1);
	return retval;
}