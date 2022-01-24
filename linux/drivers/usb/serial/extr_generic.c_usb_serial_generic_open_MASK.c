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
struct usb_serial_port {scalar_t__ bulk_in_size; int /*<<< orphan*/  flags; } ;
struct tty_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_SERIAL_THROTTLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct usb_serial_port*,int /*<<< orphan*/ ) ; 

int FUNC2(struct tty_struct *tty, struct usb_serial_port *port)
{
	int result = 0;

	FUNC0(USB_SERIAL_THROTTLED, &port->flags);

	if (port->bulk_in_size)
		result = FUNC1(port, GFP_KERNEL);

	return result;
}