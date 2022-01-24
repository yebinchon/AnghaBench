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
struct acpiphp_root_context {int dummy; } ;
struct acpiphp_bridge {TYPE_1__* pci_bus; } ;
struct acpi_device {int /*<<< orphan*/ * hp; } ;
struct TYPE_2__ {int /*<<< orphan*/  bridge; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct acpiphp_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpiphp_root_context*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpiphp_bridge*) ; 
 struct acpiphp_root_context* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct acpiphp_bridge *bridge)
{
	if (FUNC5(bridge->pci_bus)) {
		struct acpiphp_root_context *root_context;
		struct acpi_device *adev;

		FUNC1();
		adev = FUNC0(bridge->pci_bus->bridge);
		root_context = FUNC7(adev->hp);
		adev->hp = NULL;
		FUNC2();
		FUNC4(root_context);
	}
	FUNC3(bridge);
	FUNC6(bridge);
}