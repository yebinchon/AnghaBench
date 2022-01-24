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
struct usb_serial_port {int /*<<< orphan*/ * read_urbs; scalar_t__ bulk_in_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  write_fifo; int /*<<< orphan*/ * write_urbs; scalar_t__ bulk_out_size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct usb_serial_port *port)
{
	unsigned long flags;
	int i;

	if (port->bulk_out_size) {
		for (i = 0; i < FUNC0(port->write_urbs); ++i)
			FUNC4(port->write_urbs[i]);

		FUNC2(&port->lock, flags);
		FUNC1(&port->write_fifo);
		FUNC3(&port->lock, flags);
	}
	if (port->bulk_in_size) {
		for (i = 0; i < FUNC0(port->read_urbs); ++i)
			FUNC4(port->read_urbs[i]);
	}
}