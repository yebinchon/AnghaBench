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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial_port {int /*<<< orphan*/  dev; struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/  dev; } ;
struct cp210x_port_private {int /*<<< orphan*/  bInterfaceNumber; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REQTYPE_HOST_TO_INTERFACE ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 struct cp210x_port_private* FUNC4 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_serial_port *port, u8 req,
		void *buf, int bufsize)
{
	struct usb_serial *serial = port->serial;
	struct cp210x_port_private *port_priv = FUNC4(port);
	void *dmabuf;
	int result;

	dmabuf = FUNC2(buf, bufsize, GFP_KERNEL);
	if (!dmabuf)
		return -ENOMEM;

	result = FUNC3(serial->dev, FUNC5(serial->dev, 0),
			req, REQTYPE_HOST_TO_INTERFACE, 0,
			port_priv->bInterfaceNumber, dmabuf, bufsize,
			USB_CTRL_SET_TIMEOUT);

	FUNC1(dmabuf);

	if (result == bufsize) {
		result = 0;
	} else {
		FUNC0(&port->dev, "failed set req 0x%x size %d status: %d\n",
				req, bufsize, result);
		if (result >= 0)
			result = -EIO;
	}

	return result;
}