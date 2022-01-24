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
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTEL_HID_DSM_HEBC_V1_FN ; 
 int /*<<< orphan*/  INTEL_HID_DSM_HEBC_V2_FN ; 
 int /*<<< orphan*/  button_array_table ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long*) ; 

__attribute__((used)) static bool FUNC3(struct platform_device *device)
{
	acpi_handle handle = FUNC0(&device->dev);
	unsigned long long event_cap;

	if (FUNC2(handle, INTEL_HID_DSM_HEBC_V2_FN,
				      &event_cap)) {
		/* Check presence of 5 button array or v2 power button */
		if (event_cap & 0x60000)
			return true;
	}

	if (FUNC2(handle, INTEL_HID_DSM_HEBC_V1_FN,
				      &event_cap)) {
		if (event_cap & 0x20000)
			return true;
	}

	if (FUNC1(button_array_table))
		return true;

	return false;
}