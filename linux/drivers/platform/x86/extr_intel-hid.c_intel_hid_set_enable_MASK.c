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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int EIO ; 
 int /*<<< orphan*/  INTEL_HID_DSM_HDSM_FN ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct device *device, bool enable)
{
	acpi_handle handle = FUNC0(device);

	/* Enable|disable features - power button is always enabled */
	if (!FUNC2(handle, INTEL_HID_DSM_HDSM_FN,
				      enable)) {
		FUNC1(device, "failed to %sable hotkeys\n",
			 enable ? "en" : "dis");
		return -EIO;
	}

	return 0;
}