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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  METHOD_NAME__CRS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  smo8800_get_resource ; 

__attribute__((used)) static u32 FUNC3(struct acpi_device *device)
{
	u32 irq = 0;
	acpi_status status;

	status = FUNC1(device->handle, METHOD_NAME__CRS,
				     smo8800_get_resource, &irq);
	if (FUNC0(status)) {
		FUNC2(&device->dev, "acpi_walk_resources failed\n");
		return 0;
	}

	return irq;
}