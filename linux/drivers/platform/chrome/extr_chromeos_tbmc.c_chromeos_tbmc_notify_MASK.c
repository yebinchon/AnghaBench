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
typedef  int u32 ;
struct acpi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC3(struct acpi_device *adev, u32 event)
{
	FUNC0(&adev->dev);
	switch (event) {
	case 0x80:
		FUNC1(adev, adev->driver_data);
		break;
	default:
		FUNC2(&adev->dev, "Unexpected event: 0x%08X\n", event);
	}
}