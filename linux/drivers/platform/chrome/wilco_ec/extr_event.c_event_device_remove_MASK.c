#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  devt; } ;
struct event_device_data {TYPE_1__ dev; int /*<<< orphan*/  cdev; } ;
struct acpi_device {struct event_device_data* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  event_ida ; 
 int /*<<< orphan*/  FUNC2 (struct event_device_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct acpi_device *adev)
{
	struct event_device_data *dev_data = adev->driver_data;

	FUNC1(&dev_data->cdev, &dev_data->dev);
	FUNC3(&event_ida, FUNC0(dev_data->dev.devt));
	FUNC2(dev_data);

	return 0;
}