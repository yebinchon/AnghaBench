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
struct cypress_private {int line_control; int cmd_ctrl; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CONTROL_DTR ; 
 int CONTROL_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct usb_serial_port*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cypress_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC4(struct usb_serial_port *port, int on)
{
	struct cypress_private *priv = FUNC3(port);
	/* drop dtr and rts */
	FUNC1(&priv->lock);
	if (on == 0)
		priv->line_control = 0;
	else 
		priv->line_control = CONTROL_DTR | CONTROL_RTS;
	priv->cmd_ctrl = 1;
	FUNC2(&priv->lock);
	FUNC0(NULL, port, NULL, 0);
}