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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial_port {TYPE_1__* serial; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct ch341_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  mcr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH341_BIT_DTR ; 
 int /*<<< orphan*/  CH341_BIT_RTS ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ch341_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
			  unsigned int set, unsigned int clear)
{
	struct usb_serial_port *port = tty->driver_data;
	struct ch341_private *priv = FUNC3(port);
	unsigned long flags;
	u8 control;

	FUNC1(&priv->lock, flags);
	if (set & TIOCM_RTS)
		priv->mcr |= CH341_BIT_RTS;
	if (set & TIOCM_DTR)
		priv->mcr |= CH341_BIT_DTR;
	if (clear & TIOCM_RTS)
		priv->mcr &= ~CH341_BIT_RTS;
	if (clear & TIOCM_DTR)
		priv->mcr &= ~CH341_BIT_DTR;
	control = priv->mcr;
	FUNC2(&priv->lock, flags);

	return FUNC0(port->serial->dev, control);
}