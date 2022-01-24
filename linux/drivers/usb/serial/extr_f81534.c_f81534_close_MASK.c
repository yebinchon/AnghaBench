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
struct usb_serial_port {int /*<<< orphan*/ * read_urbs; int /*<<< orphan*/  lock; int /*<<< orphan*/  write_fifo; int /*<<< orphan*/ * write_urbs; TYPE_1__* serial; } ;
struct f81534_serial_private {int /*<<< orphan*/  urb_mutex; int /*<<< orphan*/  opened_port; } ;
struct TYPE_2__ {struct usb_serial_port** port; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct f81534_serial_private* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct usb_serial_port *port)
{
	struct f81534_serial_private *serial_priv =
			FUNC6(port->serial);
	struct usb_serial_port *port0 = port->serial->port[0];
	unsigned long flags;
	size_t i;

	FUNC7(port->write_urbs[0]);

	FUNC4(&port->lock, flags);
	FUNC1(&port->write_fifo);
	FUNC5(&port->lock, flags);

	/* Kill Read URBs when final port closed */
	FUNC2(&serial_priv->urb_mutex);
	serial_priv->opened_port--;

	if (!serial_priv->opened_port) {
		for (i = 0; i < FUNC0(port0->read_urbs); ++i)
			FUNC7(port0->read_urbs[i]);
	}

	FUNC3(&serial_priv->urb_mutex);
}