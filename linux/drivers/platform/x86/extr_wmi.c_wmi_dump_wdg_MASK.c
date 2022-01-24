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
struct guid_block {int guid; int flags; int notify_id; int object_id; int instance_count; } ;

/* Variables and functions */
 int ACPI_WMI_EVENT ; 
 int ACPI_WMI_EXPENSIVE ; 
 int ACPI_WMI_METHOD ; 
 int ACPI_WMI_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(const struct guid_block *g)
{
	FUNC1("%pUL:\n", g->guid);
	if (g->flags & ACPI_WMI_EVENT)
		FUNC1("\tnotify_id: 0x%02X\n", g->notify_id);
	else
		FUNC1("\tobject_id: %2pE\n", g->object_id);
	FUNC1("\tinstance_count: %d\n", g->instance_count);
	FUNC1("\tflags: %#x", g->flags);
	if (g->flags) {
		if (g->flags & ACPI_WMI_EXPENSIVE)
			FUNC0(" ACPI_WMI_EXPENSIVE");
		if (g->flags & ACPI_WMI_METHOD)
			FUNC0(" ACPI_WMI_METHOD");
		if (g->flags & ACPI_WMI_STRING)
			FUNC0(" ACPI_WMI_STRING");
		if (g->flags & ACPI_WMI_EVENT)
			FUNC0(" ACPI_WMI_EVENT");
	}
	FUNC0("\n");

}