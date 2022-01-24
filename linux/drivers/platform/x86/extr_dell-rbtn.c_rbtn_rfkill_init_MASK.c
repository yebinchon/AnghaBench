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
struct rbtn_data {int /*<<< orphan*/ * rfkill; } ;
struct acpi_device {int /*<<< orphan*/  dev; struct rbtn_data* driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 int /*<<< orphan*/  rbtn_ops ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	struct rbtn_data *rbtn_data = device->driver_data;
	int ret;

	if (rbtn_data->rfkill)
		return 0;

	/*
	 * NOTE: rbtn controls all radio devices, not only WLAN
	 *       but rfkill interface does not support "ANY" type
	 *       so "WLAN" type is used
	 */
	rbtn_data->rfkill = FUNC0("dell-rbtn", &device->dev,
					 RFKILL_TYPE_WLAN, &rbtn_ops, device);
	if (!rbtn_data->rfkill)
		return -ENOMEM;

	ret = FUNC2(rbtn_data->rfkill);
	if (ret) {
		FUNC1(rbtn_data->rfkill);
		rbtn_data->rfkill = NULL;
		return ret;
	}

	return 0;
}