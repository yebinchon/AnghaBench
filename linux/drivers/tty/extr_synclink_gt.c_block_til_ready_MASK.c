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
struct tty_struct {TYPE_1__* driver; } ;
struct tty_port {int flags; int /*<<< orphan*/  blocked_open; int /*<<< orphan*/  count; int /*<<< orphan*/  open_wait; } ;
struct slgt_info {int /*<<< orphan*/  lock; struct tty_port port; } ;
struct file {int f_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ASYNC_HUP_NOTIFY ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (struct file*) ; 
 scalar_t__ FUNC12 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*) ; 
 int FUNC14 (struct tty_port*) ; 
 scalar_t__ FUNC15 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC16 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC17 (struct tty_port*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct tty_struct*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC19(struct tty_struct *tty, struct file *filp,
			   struct slgt_info *info)
{
	FUNC3(wait, current);
	int		retval;
	bool		do_clocal = false;
	unsigned long	flags;
	int		cd;
	struct tty_port *port = &info->port;

	FUNC2(("%s block_til_ready\n", tty->driver->name));

	if (filp->f_flags & O_NONBLOCK || FUNC12(tty)) {
		/* nonblock mode is set or port is not enabled */
		FUNC17(port, 1);
		return 0;
	}

	if (FUNC1(tty))
		do_clocal = true;

	/* Wait for carrier detect and the line to become
	 * free (i.e., not in use by the callout).  While we are in
	 * this loop, port->count is dropped by one, so that
	 * close() knows when to free things.  We restore it upon
	 * exit, either normal or abnormal.
	 */

	retval = 0;
	FUNC4(&port->open_wait, &wait);

	FUNC9(&info->lock, flags);
	port->count--;
	FUNC10(&info->lock, flags);
	port->blocked_open++;

	while (1) {
		if (FUNC0(tty) && FUNC15(port))
			FUNC16(port);

		FUNC7(TASK_INTERRUPTIBLE);

		if (FUNC11(filp) || !FUNC15(port)) {
			retval = (port->flags & ASYNC_HUP_NOTIFY) ?
					-EAGAIN : -ERESTARTSYS;
			break;
		}

		cd = FUNC14(port);
		if (do_clocal || cd)
			break;

		if (FUNC8(current)) {
			retval = -ERESTARTSYS;
			break;
		}

		FUNC2(("%s block_til_ready wait\n", tty->driver->name));
		FUNC18(tty);
		FUNC6();
		FUNC13(tty);
	}

	FUNC7(TASK_RUNNING);
	FUNC5(&port->open_wait, &wait);

	if (!FUNC11(filp))
		port->count++;
	port->blocked_open--;

	if (!retval)
		FUNC17(port, 1);

	FUNC2(("%s block_til_ready ready, rc=%d\n", tty->driver->name, retval));
	return retval;
}