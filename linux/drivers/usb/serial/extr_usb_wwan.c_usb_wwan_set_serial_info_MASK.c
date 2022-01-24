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
struct TYPE_2__ {unsigned int close_delay; unsigned int closing_wait; int /*<<< orphan*/  mutex; } ;
struct usb_serial_port {TYPE_1__ port; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct serial_struct {int close_delay; int closing_wait; } ;

/* Variables and functions */
 int ASYNC_CLOSING_WAIT_NONE ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct tty_struct *tty,
			   struct serial_struct *ss)
{
	struct usb_serial_port *port = tty->driver_data;
	unsigned int closing_wait, close_delay;
	int retval = 0;

	close_delay = ss->close_delay * 10;
	closing_wait = ss->closing_wait == ASYNC_CLOSING_WAIT_NONE ?
			ASYNC_CLOSING_WAIT_NONE : ss->closing_wait * 10;

	FUNC1(&port->port.mutex);

	if (!FUNC0(CAP_SYS_ADMIN)) {
		if ((close_delay != port->port.close_delay) ||
		    (closing_wait != port->port.closing_wait))
			retval = -EPERM;
		else
			retval = -EOPNOTSUPP;
	} else {
		port->port.close_delay  = close_delay;
		port->port.closing_wait = closing_wait;
	}

	FUNC2(&port->port.mutex);
	return retval;
}