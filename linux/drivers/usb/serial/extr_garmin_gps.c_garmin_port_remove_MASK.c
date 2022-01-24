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
struct usb_serial_port {int /*<<< orphan*/  interrupt_in_urb; } ;
struct garmin_data {int /*<<< orphan*/  timer; int /*<<< orphan*/  write_urbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct garmin_data*) ; 
 struct garmin_data* FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_serial_port *port)
{
	struct garmin_data *garmin_data_p = FUNC2(port);

	FUNC3(&garmin_data_p->write_urbs);
	FUNC4(port->interrupt_in_urb);
	FUNC0(&garmin_data_p->timer);
	FUNC1(garmin_data_p);
	return 0;
}