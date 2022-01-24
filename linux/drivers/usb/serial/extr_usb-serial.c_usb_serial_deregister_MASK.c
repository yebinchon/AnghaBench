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
struct usb_serial_driver {int /*<<< orphan*/  driver_list; int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  table_lock ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial_driver*) ; 

__attribute__((used)) static void FUNC5(struct usb_serial_driver *device)
{
	FUNC3("USB Serial deregistering driver %s\n", device->description);

	FUNC1(&table_lock);
	FUNC0(&device->driver_list);
	FUNC2(&table_lock);

	FUNC4(device);
}