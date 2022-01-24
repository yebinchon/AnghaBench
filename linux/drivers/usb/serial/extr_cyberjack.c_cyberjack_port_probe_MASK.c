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
struct usb_serial_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  interrupt_in_urb; } ;
struct cyberjack_private {scalar_t__ wrsent; scalar_t__ wrfilled; scalar_t__ rdtodo; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct cyberjack_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_serial_port*,struct cyberjack_private*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_serial_port *port)
{
	struct cyberjack_private *priv;
	int result;

	priv = FUNC1(sizeof(struct cyberjack_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC2(&priv->lock);
	priv->rdtodo = 0;
	priv->wrfilled = 0;
	priv->wrsent = 0;

	FUNC3(port, priv);

	result = FUNC4(port->interrupt_in_urb, GFP_KERNEL);
	if (result)
		FUNC0(&port->dev, "usb_submit_urb(read int) failed\n");

	return 0;
}