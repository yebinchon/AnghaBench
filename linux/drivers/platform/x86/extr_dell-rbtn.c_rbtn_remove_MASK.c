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
struct rbtn_data {int type; } ;
struct acpi_device {struct rbtn_data* driver_data; } ;

/* Variables and functions */
#define  RBTN_SLIDER 129 
#define  RBTN_TOGGLE 128 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rbtn_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	struct rbtn_data *rbtn_data = device->driver_data;

	switch (rbtn_data->type) {
	case RBTN_TOGGLE:
		FUNC1(rbtn_data);
		break;
	case RBTN_SLIDER:
		FUNC2(device);
		break;
	default:
		break;
	}

	FUNC0(device, false);
	device->driver_data = NULL;

	return 0;
}