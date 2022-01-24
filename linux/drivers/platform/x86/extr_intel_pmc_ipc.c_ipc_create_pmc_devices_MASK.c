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
struct TYPE_2__ {int /*<<< orphan*/  tco_dev; int /*<<< orphan*/  punit_dev; int /*<<< orphan*/  dev; int /*<<< orphan*/  telem_res_inval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 TYPE_1__ ipcdev ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void)
{
	int ret;

	/* If we have ACPI based watchdog use that instead */
	if (!FUNC0()) {
		ret = FUNC4();
		if (ret) {
			FUNC1(ipcdev.dev, "Failed to add tco platform device\n");
			return ret;
		}
	}

	ret = FUNC3();
	if (ret) {
		FUNC1(ipcdev.dev, "Failed to add punit platform device\n");
		FUNC6(ipcdev.tco_dev);
		return ret;
	}

	if (!ipcdev.telem_res_inval) {
		ret = FUNC5();
		if (ret) {
			FUNC2(ipcdev.dev,
				"Failed to add telemetry platform device\n");
			FUNC6(ipcdev.punit_dev);
			FUNC6(ipcdev.tco_dev);
		}
	}

	return ret;
}