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
struct usb_serial_port {int /*<<< orphan*/  dev; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct serial_struct {int flags; scalar_t__ custom_divisor; scalar_t__ baud_base; } ;
struct ftdi_private {int flags; scalar_t__ custom_divisor; scalar_t__ baud_base; int /*<<< orphan*/  cfg_lock; } ;

/* Variables and functions */
 int ASYNC_FLAGS ; 
 int ASYNC_SPD_CUST ; 
 int ASYNC_SPD_MASK ; 
 int ASYNC_USR_MASK ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ftdi_private* FUNC5 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty,
	struct serial_struct *ss)
{
	struct usb_serial_port *port = tty->driver_data;
	struct ftdi_private *priv = FUNC5(port);
	struct ftdi_private old_priv;

	FUNC3(&priv->cfg_lock);
	old_priv = *priv;

	/* Do error checking and permission checking */

	if (!FUNC0(CAP_SYS_ADMIN)) {
		if ((ss->flags ^ priv->flags) & ~ASYNC_USR_MASK) {
			FUNC4(&priv->cfg_lock);
			return -EPERM;
		}
		priv->flags = ((priv->flags & ~ASYNC_USR_MASK) |
			       (ss->flags & ASYNC_USR_MASK));
		priv->custom_divisor = ss->custom_divisor;
		goto check_and_exit;
	}

	if (ss->baud_base != priv->baud_base) {
		FUNC4(&priv->cfg_lock);
		return -EINVAL;
	}

	/* Make the changes - these are privileged changes! */

	priv->flags = ((priv->flags & ~ASYNC_FLAGS) |
					(ss->flags & ASYNC_FLAGS));
	priv->custom_divisor = ss->custom_divisor;

check_and_exit:
	FUNC6(port);

	if ((priv->flags ^ old_priv.flags) & ASYNC_SPD_MASK ||
			((priv->flags & ASYNC_SPD_MASK) == ASYNC_SPD_CUST &&
			 priv->custom_divisor != old_priv.custom_divisor)) {

		/* warn about deprecation unless clearing */
		if (priv->flags & ASYNC_SPD_MASK)
			FUNC2(&port->dev, "use of SPD flags is deprecated\n");

		FUNC1(tty, port);
	}
	FUNC4(&priv->cfg_lock);
	return 0;
}