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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  sony_nc_acpi_handle ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int*,int*) ; 

__attribute__((used)) static int FUNC3(int handle, int argument, int *result)
{
	int arg, ret = 0;
	int offset = FUNC1(handle);

	if (offset < 0)
		return offset;

	arg = offset | argument;
	ret = FUNC2(sony_nc_acpi_handle, "SN07", &arg, result);
	FUNC0("called SN07 with 0x%.4x (result: 0x%.4x)\n", arg, *result);
	return ret;
}