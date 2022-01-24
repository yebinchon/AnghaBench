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
struct usb_serial_port {int dummy; } ;
struct moschip_port {struct moschip_port* dr; struct moschip_port* ctrl_buf; int /*<<< orphan*/  control_urb; struct moschip_port* led_dr; int /*<<< orphan*/  led_urb; int /*<<< orphan*/  led_timer2; int /*<<< orphan*/  led_timer1; scalar_t__ has_led; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODEM_CONTROL_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct moschip_port*) ; 
 struct moschip_port* FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_serial_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_serial_port *port)
{
	struct moschip_port *mos7840_port;

	mos7840_port = FUNC2(port);

	if (mos7840_port->has_led) {
		/* Turn off LED */
		FUNC3(port, MODEM_CONTROL_REGISTER, 0x0300);

		FUNC0(&mos7840_port->led_timer1);
		FUNC0(&mos7840_port->led_timer2);

		FUNC5(mos7840_port->led_urb);
		FUNC4(mos7840_port->led_urb);
		FUNC1(mos7840_port->led_dr);
	}
	FUNC5(mos7840_port->control_urb);
	FUNC4(mos7840_port->control_urb);
	FUNC1(mos7840_port->ctrl_buf);
	FUNC1(mos7840_port->dr);
	FUNC1(mos7840_port);

	return 0;
}