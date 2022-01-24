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
struct acpi_processor {int /*<<< orphan*/  id; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static acpi_status FUNC4(struct acpi_processor *pr)
{
	if (!FUNC1(pr->handle))
		return AE_ERROR;

	pr->id = FUNC2(pr);
	if (FUNC0(pr->id))
		return AE_ERROR;

	/*
	 * Sync with Xen hypervisor, providing new /sys/.../xen_cpuX
	 * interface after cpu hotadded.
	 */
	FUNC3();

	return AE_OK;
}