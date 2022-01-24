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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long long) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 

__attribute__((used)) static int FUNC3(acpi_handle handle, char *name,
				      int *temp)
{
	unsigned long long r;
	acpi_status status;

	status = FUNC2(handle, name, NULL, &r);
	if (FUNC0(status))
		return -EIO;

	*temp = FUNC1(r);

	return 0;
}