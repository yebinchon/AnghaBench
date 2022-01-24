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
struct ftdi_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftdi_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*) ; 
 struct ftdi_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port)
{
	struct ftdi_private *priv = FUNC3(port);

	FUNC0(port);

	FUNC2(port);

	FUNC1(priv);

	return 0;
}