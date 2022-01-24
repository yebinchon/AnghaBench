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
struct acpi_buffer {int length; void* pointer; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_PROCESSOR_AGGREGATOR_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  xen_cpu_lock ; 

__attribute__((used)) static void FUNC6(acpi_handle handle)
{
	int idle_nums;
	struct acpi_buffer param = {
		.length = 4,
		.pointer = (void *)&idle_nums,
	};


	FUNC2(&xen_cpu_lock);
	idle_nums = FUNC1(handle);
	if (idle_nums < 0) {
		FUNC3(&xen_cpu_lock);
		return;
	}

	idle_nums = FUNC4(idle_nums)
		    ?: FUNC5();
	if (idle_nums >= 0)
		FUNC0(handle, ACPI_PROCESSOR_AGGREGATOR_NOTIFY,
				  0, &param);
	FUNC3(&xen_cpu_lock);
}