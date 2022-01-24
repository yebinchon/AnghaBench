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
typedef  int u16 ;
struct usb_serial_port {int dummy; } ;
struct cp210x_port_private {int has_swapped_line_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP210X_GET_LINE_CTL ; 
 int /*<<< orphan*/  CP210X_SET_LINE_CTL ; 
 int FUNC0 (struct usb_serial_port*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct usb_serial_port*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 struct cp210x_port_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port)
{
	struct cp210x_port_private *port_priv = FUNC3(port);
	u16 line_ctl_save;
	u16 line_ctl_test;
	int err;

	err = FUNC0(port, CP210X_GET_LINE_CTL, &line_ctl_save);
	if (err)
		return err;

	err = FUNC1(port, CP210X_SET_LINE_CTL, 0x800);
	if (err)
		return err;

	err = FUNC0(port, CP210X_GET_LINE_CTL, &line_ctl_test);
	if (err)
		return err;

	if (line_ctl_test == 8) {
		port_priv->has_swapped_line_ctl = true;
		line_ctl_save = FUNC2(line_ctl_save);
	}

	return FUNC1(port, CP210X_SET_LINE_CTL, line_ctl_save);
}