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
struct usb_serial_port {TYPE_1__* serial; } ;
struct ch341_private {int mcr; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CH341_BIT_DTR ; 
 int CH341_BIT_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ch341_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC4(struct usb_serial_port *port, int on)
{
	struct ch341_private *priv = FUNC3(port);
	unsigned long flags;

	/* drop DTR and RTS */
	FUNC1(&priv->lock, flags);
	if (on)
		priv->mcr |= CH341_BIT_RTS | CH341_BIT_DTR;
	else
		priv->mcr &= ~(CH341_BIT_RTS | CH341_BIT_DTR);
	FUNC2(&priv->lock, flags);
	FUNC0(port->serial->dev, priv->mcr);
}