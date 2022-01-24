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
struct usb_serial_port {int /*<<< orphan*/  read_urb; } ;
struct tty_struct {int dummy; } ;
struct garmin_data {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; scalar_t__ count; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAGS_SESSION_REPLY1_SEEN ; 
 scalar_t__ STATE_ACTIVE ; 
 scalar_t__ STATE_RESET ; 
 int FUNC0 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  initial_mode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct garmin_data* FUNC3 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, struct usb_serial_port *port)
{
	unsigned long flags;
	int status = 0;
	struct garmin_data *garmin_data_p = FUNC3(port);

	FUNC1(&garmin_data_p->lock, flags);
	garmin_data_p->mode  = initial_mode;
	garmin_data_p->count = 0;
	garmin_data_p->flags &= FLAGS_SESSION_REPLY1_SEEN;
	FUNC2(&garmin_data_p->lock, flags);

	/* shutdown any bulk reads that might be going on */
	FUNC4(port->read_urb);

	if (garmin_data_p->state == STATE_RESET)
		status = FUNC0(port);

	garmin_data_p->state = STATE_ACTIVE;
	return status;
}