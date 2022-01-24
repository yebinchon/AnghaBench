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
struct usb_serial_port {TYPE_1__** write_urbs; } ;
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int FUNC1 (struct tty_struct*,struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty, struct usb_serial_port *port)
{
	int i;

	for (i = 0; i < FUNC0(port->write_urbs); ++i)
		port->write_urbs[i]->transfer_flags = URB_ZERO_PACKET;

	/* Start reading from the device */
	return FUNC1(tty, port);
}