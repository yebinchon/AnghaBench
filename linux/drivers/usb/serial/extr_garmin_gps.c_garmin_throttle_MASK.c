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
struct garmin_data {int flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FLAGS_QUEUING ; 
 int FLAGS_THROTTLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct garmin_data* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	struct usb_serial_port *port = tty->driver_data;
	struct garmin_data *garmin_data_p = FUNC2(port);

	/* set flag, data received will be put into a queue
	   for later processing */
	FUNC0(&garmin_data_p->lock);
	garmin_data_p->flags |= FLAGS_QUEUING|FLAGS_THROTTLED;
	FUNC1(&garmin_data_p->lock);
}