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
struct usb_serial_port {TYPE_1__ port; } ;
struct oti6858_private {int /*<<< orphan*/  delayed_write_work; int /*<<< orphan*/  delayed_setup_work; struct usb_serial_port* port; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct oti6858_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_data ; 
 int /*<<< orphan*/  setup_line ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_serial_port*,struct oti6858_private*) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port)
{
	struct oti6858_private *priv;

	priv = FUNC1(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC2(&priv->lock);
	priv->port = port;
	FUNC0(&priv->delayed_setup_work, setup_line);
	FUNC0(&priv->delayed_write_work, send_data);

	FUNC3(port, priv);

	port->port.drain_delay = 256;	/* FIXME: check the FIFO length */

	return 0;
}