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
struct tty_struct {struct port* driver_data; } ;
struct async_icount {int dummy; } ;
struct port {int /*<<< orphan*/  tty_wait; struct async_icount tty_icount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,...) ; 
 int ENOIOCTLCMD ; 
#define  TIOCMIWAIT 128 
 int /*<<< orphan*/  FUNC1 (struct port*,unsigned long,struct async_icount*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty,
		      unsigned int cmd, unsigned long arg)
{
	struct port *port = tty->driver_data;
	int rval = -ENOIOCTLCMD;

	FUNC0("******** IOCTL, cmd: %d", cmd);

	switch (cmd) {
	case TIOCMIWAIT: {
		struct async_icount cprev = port->tty_icount;

		rval = FUNC2(port->tty_wait,
				FUNC1(port, arg, &cprev));
		break;
	}
	default:
		FUNC0("ERR: 0x%08X, %d", cmd, cmd);
		break;
	}

	return rval;
}