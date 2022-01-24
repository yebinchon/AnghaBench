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
struct qt2_port_private {int /*<<< orphan*/  urb_lock; scalar_t__ urb_in_use; } ;

/* Variables and functions */
 int QT2_WRITE_BUFFER_SIZE ; 
 int QT2_WRITE_CONTROL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct qt2_port_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty)
{
	struct usb_serial_port *port = tty->driver_data;
	struct qt2_port_private *port_priv;
	unsigned long flags = 0;
	int r;

	port_priv = FUNC2(port);

	FUNC0(&port_priv->urb_lock, flags);

	if (port_priv->urb_in_use)
		r = 0;
	else
		r = QT2_WRITE_BUFFER_SIZE - QT2_WRITE_CONTROL_SIZE;

	FUNC1(&port_priv->urb_lock, flags);

	return r;
}