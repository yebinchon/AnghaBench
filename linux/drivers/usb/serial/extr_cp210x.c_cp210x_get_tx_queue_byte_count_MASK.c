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
typedef  int /*<<< orphan*/  u32 ;
struct usb_serial_port {int /*<<< orphan*/  dev; struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/  dev; } ;
struct cp210x_port_private {int /*<<< orphan*/  bInterfaceNumber; } ;
struct cp210x_comm_status {int /*<<< orphan*/  ulAmountInOutQueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP210X_GET_COMM_STATUS ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REQTYPE_INTERFACE_TO_HOST ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cp210x_comm_status*) ; 
 struct cp210x_comm_status* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cp210x_comm_status*,int,int /*<<< orphan*/ ) ; 
 struct cp210x_port_private* FUNC5 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_serial_port *port,
		u32 *count)
{
	struct usb_serial *serial = port->serial;
	struct cp210x_port_private *port_priv = FUNC5(port);
	struct cp210x_comm_status *sts;
	int result;

	sts = FUNC2(sizeof(*sts), GFP_KERNEL);
	if (!sts)
		return -ENOMEM;

	result = FUNC4(serial->dev, FUNC6(serial->dev, 0),
			CP210X_GET_COMM_STATUS, REQTYPE_INTERFACE_TO_HOST,
			0, port_priv->bInterfaceNumber, sts, sizeof(*sts),
			USB_CTRL_GET_TIMEOUT);
	if (result == sizeof(*sts)) {
		*count = FUNC3(sts->ulAmountInOutQueue);
		result = 0;
	} else {
		FUNC0(&port->dev, "failed to get comm status: %d\n", result);
		if (result >= 0)
			result = -EIO;
	}

	FUNC1(sts);

	return result;
}