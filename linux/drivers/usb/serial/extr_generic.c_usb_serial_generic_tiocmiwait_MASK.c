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
struct TYPE_2__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct async_icount {int dummy; } ;
struct usb_serial_port {TYPE_1__ port; int /*<<< orphan*/  lock; struct async_icount icount; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,unsigned long,struct async_icount*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct tty_struct *tty, unsigned long arg)
{
	struct usb_serial_port *port = tty->driver_data;
	struct async_icount cnow;
	unsigned long flags;
	int ret;

	FUNC0(&port->lock, flags);
	cnow = port->icount;				/* atomic copy */
	FUNC1(&port->lock, flags);

	ret = FUNC4(port->port.delta_msr_wait,
			FUNC3(tty, arg, &cnow));
	if (!ret && !FUNC2(&port->port))
		ret = -EIO;

	return ret;
}