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
struct usb_serial_port {int /*<<< orphan*/  dev; } ;
struct f81232_private {int /*<<< orphan*/  interrupt_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct f81232_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC3(struct usb_serial_port *port,
				      unsigned char *data,
				      size_t actual_length)
{
	struct f81232_private *priv = FUNC2(port);

	if (!actual_length)
		return;

	switch (data[0] & 0x07) {
	case 0x00: /* msr change */
		FUNC0(&port->dev, "IIR: MSR Change: %02x\n", data[0]);
		FUNC1(&priv->interrupt_work);
		break;
	case 0x02: /* tx-empty */
		break;
	case 0x04: /* rx data available */
		break;
	case 0x06: /* lsr change */
		/* we can forget it. the LSR will read from bulk-in */
		FUNC0(&port->dev, "IIR: LSR Change: %02x\n", data[0]);
		break;
	}
}