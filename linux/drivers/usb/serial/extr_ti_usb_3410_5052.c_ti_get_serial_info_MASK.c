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
struct TYPE_3__ {unsigned int closing_wait; } ;
struct usb_serial_port {int /*<<< orphan*/  write_fifo; int /*<<< orphan*/  port_number; int /*<<< orphan*/  minor; TYPE_1__ port; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct ti_port {TYPE_2__* tp_tdev; } ;
struct serial_struct {int baud_base; unsigned int closing_wait; int /*<<< orphan*/  xmit_fifo_size; int /*<<< orphan*/  port; int /*<<< orphan*/  line; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {scalar_t__ td_is_3410; } ;

/* Variables and functions */
 unsigned int ASYNC_CLOSING_WAIT_NONE ; 
 int /*<<< orphan*/  PORT_16550A ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ti_port* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty,
	struct serial_struct *ss)
{
	struct usb_serial_port *port = tty->driver_data;
	struct ti_port *tport = FUNC2(port);
	unsigned cwait;

	cwait = port->port.closing_wait;
	if (cwait != ASYNC_CLOSING_WAIT_NONE)
		cwait = FUNC0(cwait) / 10;

	ss->type = PORT_16550A;
	ss->line = port->minor;
	ss->port = port->port_number;
	ss->xmit_fifo_size = FUNC1(&port->write_fifo);
	ss->baud_base = tport->tp_tdev->td_is_3410 ? 921600 : 460800;
	ss->closing_wait = cwait;
	return 0;
}