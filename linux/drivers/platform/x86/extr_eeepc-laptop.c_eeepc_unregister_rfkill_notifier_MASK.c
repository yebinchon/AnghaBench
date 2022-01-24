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
struct eeepc_laptop {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SYSTEM_NOTIFY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eeepc_laptop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eeepc_rfkill_notify ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(struct eeepc_laptop *eeepc,
					     char *node)
{
	acpi_status status = AE_OK;
	acpi_handle handle;

	status = FUNC1(NULL, node, &handle);

	if (FUNC0(status))
		return;

	status = FUNC2(handle,
					     ACPI_SYSTEM_NOTIFY,
					     eeepc_rfkill_notify);
	if (FUNC0(status))
		FUNC4("Error removing rfkill notify handler %s\n",
			node);
		/*
		 * Refresh pci hotplug in case the rfkill
		 * state was changed after
		 * eeepc_unregister_rfkill_notifier()
		 */
	FUNC3(eeepc, handle);
}