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
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const char *FUNC1(acpi_handle handle)
{
	if (FUNC0(handle, "GHCI"))
		return "GHCI";

	if (FUNC0(handle, "SPFC"))
		return "SPFC";

	return NULL;
}