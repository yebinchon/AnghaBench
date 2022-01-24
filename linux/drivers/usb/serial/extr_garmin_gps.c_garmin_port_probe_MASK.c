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
struct garmin_data {int /*<<< orphan*/  write_urbs; scalar_t__ count; scalar_t__ flags; scalar_t__ state; struct usb_serial_port* port; int /*<<< orphan*/  pktlist; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct garmin_data*) ; 
 struct garmin_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_serial_port*,struct garmin_data*) ; 

__attribute__((used)) static int FUNC8(struct usb_serial_port *port)
{
	int status;
	struct garmin_data *garmin_data_p;

	garmin_data_p = FUNC4(sizeof(struct garmin_data), GFP_KERNEL);
	if (!garmin_data_p)
		return -ENOMEM;

	FUNC6(&garmin_data_p->timer, timeout_handler, 0);
	FUNC5(&garmin_data_p->lock);
	FUNC0(&garmin_data_p->pktlist);
	garmin_data_p->port = port;
	garmin_data_p->state = 0;
	garmin_data_p->flags = 0;
	garmin_data_p->count = 0;
	FUNC2(&garmin_data_p->write_urbs);
	FUNC7(port, garmin_data_p);

	status = FUNC1(port);
	if (status)
		goto err_free;

	return 0;
err_free:
	FUNC3(garmin_data_p);

	return status;
}