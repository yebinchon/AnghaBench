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
struct toshiba_bluetooth_dev {scalar_t__ rfk; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 struct toshiba_bluetooth_dev* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct toshiba_bluetooth_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct acpi_device *device)
{
	struct toshiba_bluetooth_dev *bt_dev = FUNC0(device);

	/* clean up */
	if (bt_dev->rfk) {
		FUNC3(bt_dev->rfk);
		FUNC2(bt_dev->rfk);
	}

	FUNC1(bt_dev);

	return FUNC4(device->handle);
}