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
struct moschip_port {int /*<<< orphan*/  led_timer1; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_ON_MS ; 
 int /*<<< orphan*/  MODEM_CONTROL_REGISTER ; 
 int /*<<< orphan*/  MOS7840_FLAG_LED_BUSY ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct moschip_port*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct moschip_port* FUNC4 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC5(struct usb_serial_port *port)
{
	struct moschip_port *mos7840_port = FUNC4(port);

	if (FUNC3(MOS7840_FLAG_LED_BUSY, &mos7840_port->flags))
		return;

	FUNC1(mos7840_port, 0x0301, MODEM_CONTROL_REGISTER);
	FUNC0(&mos7840_port->led_timer1,
				jiffies + FUNC2(LED_ON_MS));
}