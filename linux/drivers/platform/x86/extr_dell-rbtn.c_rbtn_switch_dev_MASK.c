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
struct rbtn_data {scalar_t__ type; } ;
struct device {int dummy; } ;
struct acpi_device {struct rbtn_data* driver_data; } ;

/* Variables and functions */
 scalar_t__ RBTN_SLIDER ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 struct acpi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct acpi_device *device = FUNC2(dev);
	struct rbtn_data *rbtn_data = device->driver_data;
	bool enable = data;

	if (rbtn_data->type != RBTN_SLIDER)
		return 0;

	if (enable)
		FUNC1(device);
	else
		FUNC0(device);

	return 0;
}