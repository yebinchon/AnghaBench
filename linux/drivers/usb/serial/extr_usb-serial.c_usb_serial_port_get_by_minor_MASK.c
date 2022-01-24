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
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/  kref; int /*<<< orphan*/  disc_mutex; scalar_t__ disconnected; } ;

/* Variables and functions */
 struct usb_serial_port* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  serial_minors ; 
 int /*<<< orphan*/  table_lock ; 

struct usb_serial_port *FUNC4(unsigned minor)
{
	struct usb_serial *serial;
	struct usb_serial_port *port;

	FUNC2(&table_lock);
	port = FUNC0(&serial_minors, minor);
	if (!port)
		goto exit;

	serial = port->serial;
	FUNC2(&serial->disc_mutex);
	if (serial->disconnected) {
		FUNC3(&serial->disc_mutex);
		port = NULL;
	} else {
		FUNC1(&serial->kref);
	}
exit:
	FUNC3(&table_lock);
	return port;
}