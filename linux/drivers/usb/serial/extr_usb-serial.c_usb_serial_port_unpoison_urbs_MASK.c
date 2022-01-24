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
struct usb_serial_port {int /*<<< orphan*/  interrupt_out_urb; int /*<<< orphan*/  interrupt_in_urb; int /*<<< orphan*/ * write_urbs; int /*<<< orphan*/ * read_urbs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usb_serial_port *port)
{
	int i;

	for (i = 0; i < FUNC0(port->read_urbs); ++i)
		FUNC1(port->read_urbs[i]);
	for (i = 0; i < FUNC0(port->write_urbs); ++i)
		FUNC1(port->write_urbs[i]);

	FUNC1(port->interrupt_in_urb);
	FUNC1(port->interrupt_out_urb);
}