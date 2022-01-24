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
struct usb_serial_port {int /*<<< orphan*/  interrupt_in_urb; } ;
struct mct_u232_private {int /*<<< orphan*/  read_urb; } ;

/* Variables and functions */
 struct mct_u232_private* FUNC0 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC3(struct usb_serial_port *port)
{
	struct mct_u232_private *priv = FUNC0(port);

	FUNC1(priv->read_urb);
	FUNC1(port->interrupt_in_urb);

	FUNC2(port);
}