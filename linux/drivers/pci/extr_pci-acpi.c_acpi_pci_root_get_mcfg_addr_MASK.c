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
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  METHOD_NAME__CBA ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long long*) ; 

phys_addr_t FUNC2(acpi_handle handle)
{
	acpi_status status = AE_NOT_EXIST;
	unsigned long long mcfg_addr;

	if (handle)
		status = FUNC1(handle, METHOD_NAME__CBA,
					       NULL, &mcfg_addr);
	if (FUNC0(status))
		return 0;

	return (phys_addr_t)mcfg_addr;
}