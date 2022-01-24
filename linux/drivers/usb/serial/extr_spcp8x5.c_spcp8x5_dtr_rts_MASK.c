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
typedef  int u8 ;
struct usb_serial_port {int dummy; } ;
struct spcp8x5_private {int line_control; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int MCR_CONTROL_LINE_DTR ; 
 int MCR_CONTROL_LINE_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct spcp8x5_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC4(struct usb_serial_port *port, int on)
{
	struct spcp8x5_private *priv = FUNC3(port);
	unsigned long flags;
	u8 control;

	FUNC1(&priv->lock, flags);
	if (on)
		priv->line_control = MCR_CONTROL_LINE_DTR
						| MCR_CONTROL_LINE_RTS;
	else
		priv->line_control &= ~ (MCR_CONTROL_LINE_DTR
						| MCR_CONTROL_LINE_RTS);
	control = priv->line_control;
	FUNC2(&priv->lock, flags);
	FUNC0(port, control);
}