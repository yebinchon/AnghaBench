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
struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct ti_port {TYPE_2__* tp_port; } ;
struct serial_struct {unsigned int closing_wait; } ;
struct TYPE_3__ {unsigned int closing_wait; } ;
struct TYPE_4__ {TYPE_1__ port; } ;

/* Variables and functions */
 unsigned int ASYNC_CLOSING_WAIT_NONE ; 
 unsigned int FUNC0 (int) ; 
 struct ti_port* FUNC1 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty,
	struct serial_struct *ss)
{
	struct usb_serial_port *port = tty->driver_data;
	struct ti_port *tport = FUNC1(port);
	unsigned cwait;

	cwait = ss->closing_wait;
	if (cwait != ASYNC_CLOSING_WAIT_NONE)
		cwait = FUNC0(10 * ss->closing_wait);

	tport->tp_port->port.closing_wait = cwait;

	return 0;
}