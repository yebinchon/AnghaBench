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
struct usb_serial_port {int /*<<< orphan*/  write_fifo; } ;
struct tty_struct {int dummy; } ;
struct ti_port {int /*<<< orphan*/  tp_lock; int /*<<< orphan*/  tp_is_open; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_port*) ; 
 struct ti_port* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, struct usb_serial_port *port,
			const unsigned char *data, int count)
{
	struct ti_port *tport = FUNC2(port);

	if (count == 0) {
		return 0;
	}

	if (!tport->tp_is_open)
		return -ENODEV;

	count = FUNC0(&port->write_fifo, data, count,
							&tport->tp_lock);
	FUNC1(tport);

	return count;
}