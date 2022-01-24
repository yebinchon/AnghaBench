#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int drain_delay; } ;
struct usb_serial_port {TYPE_1__ port; int /*<<< orphan*/  serial; } ;
struct usb_device_id {int /*<<< orphan*/  driver_info; } ;
struct spcp8x5_private {int /*<<< orphan*/  quirks; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct spcp8x5_private* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usb_device_id* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_serial_port*,struct spcp8x5_private*) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port)
{
	const struct usb_device_id *id = FUNC2(port->serial);
	struct spcp8x5_private *priv;

	priv = FUNC0(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC1(&priv->lock);
	priv->quirks = id->driver_info;

	FUNC3(port, priv);

	port->port.drain_delay = 256;

	return 0;
}