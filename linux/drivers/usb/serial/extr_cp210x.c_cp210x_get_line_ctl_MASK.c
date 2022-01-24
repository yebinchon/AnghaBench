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
typedef  int /*<<< orphan*/  u16 ;
struct usb_serial_port {int dummy; } ;
struct cp210x_port_private {scalar_t__ has_swapped_line_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP210X_GET_LINE_CTL ; 
 int FUNC0 (struct usb_serial_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cp210x_port_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct usb_serial_port *port, u16 *ctl)
{
	struct cp210x_port_private *port_priv = FUNC2(port);
	int err;

	err = FUNC0(port, CP210X_GET_LINE_CTL, ctl);
	if (err)
		return err;

	/* Workaround swapped bytes in 16-bit value from CP210X_GET_LINE_CTL */
	if (port_priv->has_swapped_line_ctl)
		*ctl = FUNC1(*ctl);

	return 0;
}