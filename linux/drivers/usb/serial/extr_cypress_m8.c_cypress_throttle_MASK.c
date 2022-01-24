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
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct cypress_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  THROTTLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cypress_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	struct usb_serial_port *port = tty->driver_data;
	struct cypress_private *priv = FUNC2(port);

	FUNC0(&priv->lock);
	priv->rx_flags = THROTTLED;
	FUNC1(&priv->lock);
}