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
struct cyberjack_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cyberjack_private*) ; 
 struct cyberjack_private* FUNC1 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_serial_port *port)
{
	struct cyberjack_private *priv;

	FUNC2(port->interrupt_in_urb);

	priv = FUNC1(port);
	FUNC0(priv);

	return 0;
}