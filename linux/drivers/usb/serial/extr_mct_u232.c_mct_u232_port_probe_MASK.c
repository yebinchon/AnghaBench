#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_serial_port {int /*<<< orphan*/  dev; struct usb_serial* serial; } ;
struct usb_serial {TYPE_1__** port; } ;
struct mct_u232_private {int /*<<< orphan*/  lock; TYPE_2__* read_urb; } ;
struct TYPE_4__ {struct usb_serial_port* context; } ;
struct TYPE_3__ {TYPE_2__* interrupt_in_urb; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct mct_u232_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_serial_port*,struct mct_u232_private*) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port)
{
	struct usb_serial *serial = port->serial;
	struct mct_u232_private *priv;

	/* check first to simplify error handling */
	if (!serial->port[1] || !serial->port[1]->interrupt_in_urb) {
		FUNC0(&port->dev, "expected endpoint missing\n");
		return -ENODEV;
	}

	priv = FUNC1(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	/* Use second interrupt-in endpoint for reading. */
	priv->read_urb = serial->port[1]->interrupt_in_urb;
	priv->read_urb->context = port;

	FUNC2(&priv->lock);

	FUNC3(port, priv);

	return 0;
}