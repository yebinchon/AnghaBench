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
struct asus_wmi {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SYSTEM_NOTIFY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct asus_wmi*) ; 
 int /*<<< orphan*/  asus_rfkill_notify ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(struct asus_wmi *asus, char *node)
{
	acpi_status status;
	acpi_handle handle;

	status = FUNC1(NULL, node, &handle);
	if (FUNC0(status))
		return -ENODEV;

	status = FUNC2(handle, ACPI_SYSTEM_NOTIFY,
					     asus_rfkill_notify, asus);
	if (FUNC0(status))
		FUNC3("Failed to register notify on %s\n", node);

	return 0;
}