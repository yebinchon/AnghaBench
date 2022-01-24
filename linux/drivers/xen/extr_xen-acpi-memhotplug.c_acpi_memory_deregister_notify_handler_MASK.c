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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SYSTEM_NOTIFY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  acpi_memory_device_notify ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC3(acpi_handle handle,
				      u32 level, void *ctxt, void **retv)
{
	acpi_status status;

	status = FUNC2(handle);
	if (FUNC0(status))
		return AE_OK;	/* continue */

	status = FUNC1(handle,
					    ACPI_SYSTEM_NOTIFY,
					    acpi_memory_device_notify);

	return AE_OK;	/* continue */
}