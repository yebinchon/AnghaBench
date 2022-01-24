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
struct usb_serial_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  interrupt_in_urb; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty)
{
	struct usb_serial_port *port = tty->driver_data;
	/* just restart the receive interrupt URB */

	if (FUNC1(port->interrupt_in_urb, GFP_KERNEL))
		FUNC0(&port->dev, "usb_submit_urb(read urb) failed\n");
}