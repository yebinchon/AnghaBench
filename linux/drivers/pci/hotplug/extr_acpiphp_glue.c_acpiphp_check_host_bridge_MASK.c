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
struct acpiphp_bridge {int dummy; } ;
struct acpi_device {scalar_t__ hp; } ;
struct TYPE_2__ {struct acpiphp_bridge* root_bridge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct acpiphp_bridge*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpiphp_bridge*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct acpiphp_bridge*) ; 
 TYPE_1__* FUNC7 (scalar_t__) ; 

void FUNC8(struct acpi_device *adev)
{
	struct acpiphp_bridge *bridge = NULL;

	FUNC0();
	if (adev->hp) {
		bridge = FUNC7(adev->hp)->root_bridge;
		if (bridge)
			FUNC3(bridge);
	}
	FUNC1();
	if (bridge) {
		FUNC4();

		FUNC2(bridge);

		FUNC5();
		FUNC6(bridge);
	}
}