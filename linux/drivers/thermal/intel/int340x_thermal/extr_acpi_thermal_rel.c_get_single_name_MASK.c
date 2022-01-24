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
struct acpi_buffer {int /*<<< orphan*/  pointer; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  ACPI_SINGLE_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(acpi_handle handle, char *name)
{
	struct acpi_buffer buffer = {ACPI_ALLOCATE_BUFFER};

	if (FUNC0(FUNC1(handle, ACPI_SINGLE_NAME, &buffer)))
		FUNC4("Failed to get device name from acpi handle\n");
	else {
		FUNC3(name, buffer.pointer, ACPI_NAMESEG_SIZE);
		FUNC2(buffer.pointer);
	}
}