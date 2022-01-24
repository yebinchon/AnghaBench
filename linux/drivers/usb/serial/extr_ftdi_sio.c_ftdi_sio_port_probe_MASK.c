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
struct usb_serial_port {TYPE_2__* serial; } ;
struct ftdi_sio_quirk {int /*<<< orphan*/  (* port_probe ) (struct ftdi_private*) ;} ;
struct ftdi_private {int latency; int /*<<< orphan*/  cfg_lock; } ;
struct TYPE_4__ {TYPE_1__* interface; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*) ; 
 int FUNC3 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial_port*) ; 
 struct ftdi_private* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct ftdi_private*) ; 
 struct ftdi_sio_quirk* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_serial_port*,struct ftdi_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC12(struct usb_serial_port *port)
{
	struct ftdi_private *priv;
	const struct ftdi_sio_quirk *quirk = FUNC9(port->serial);
	int result;

	priv = FUNC5(sizeof(struct ftdi_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC6(&priv->cfg_lock);

	if (quirk && quirk->port_probe)
		quirk->port_probe(priv);

	FUNC10(port, priv);

	FUNC2(port);
	FUNC4(port);
	if (FUNC7(port) < 0)
		priv->latency = 16;
	FUNC11(port);
	FUNC0(port);

	result = FUNC3(port);
	if (result < 0) {
		FUNC1(&port->serial->interface->dev,
			"GPIO initialisation failed: %d\n",
			result);
	}

	return 0;
}