#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct thermal_cooling_device {TYPE_1__ device; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_2__ dev; struct thermal_cooling_device* driver_data; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  MEMORY_GET_BANDWIDTH ; 
 int /*<<< orphan*/  MEMORY_SET_BANDWIDTH ; 
 int FUNC1 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_cooling_ops ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct thermal_cooling_device* FUNC5 (char*,struct acpi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct thermal_cooling_device*) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *device)
{
	int result = -ENODEV;
	struct thermal_cooling_device *cdev;

	if (!device)
		return -EINVAL;

	if (!FUNC2(device->handle, MEMORY_GET_BANDWIDTH))
		goto end;

	if (!FUNC2(device->handle, MEMORY_SET_BANDWIDTH))
		goto end;

	cdev = FUNC5("Memory controller", device,
					       &memory_cooling_ops);
	if (FUNC0(cdev)) {
		result = FUNC1(cdev);
		goto end;
	}

	device->driver_data = cdev;
	result = FUNC3(&device->dev.kobj,
				&cdev->device.kobj, "thermal_cooling");
	if (result)
		goto unregister;

	result = FUNC3(&cdev->device.kobj,
				&device->dev.kobj, "device");
	if (result) {
		FUNC4(&device->dev.kobj, "thermal_cooling");
		goto unregister;
	}

 end:
	return result;

 unregister:
	FUNC6(cdev);
	return result;

}