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
struct usb_serial_port {int /*<<< orphan*/  interrupt_in_urb; int /*<<< orphan*/  dev; } ;
struct tty_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tty_struct*,struct usb_serial_port*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
					struct usb_serial_port *port)
{
	int retval;

	retval = FUNC3(port->interrupt_in_urb, GFP_KERNEL);
	if (retval) {
		FUNC0(&port->dev, "usb_submit_urb(read int) failed\n");
		return retval;
	}

	retval = FUNC2(tty, port);
	if (retval)
		FUNC1(port->interrupt_in_urb);

	return retval;
}