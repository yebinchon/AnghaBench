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
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ AE_OK ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static int FUNC2(acpi_handle handle, const char *method,
			     acpi_handle *ret)
{
	acpi_status status;

	if (method == NULL)
		return -ENODEV;

	if (ret)
		status = FUNC0(handle, (char *)method,
					 ret);
	else {
		acpi_handle dummy;

		status = FUNC0(handle, (char *)method,
					 &dummy);
	}

	if (status != AE_OK) {
		if (ret)
			FUNC1("Error finding %s\n", method);
		return -ENODEV;
	}
	return 0;
}