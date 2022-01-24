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
union acpi_object {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct acpi_buffer*) ; 

__attribute__((used)) static void FUNC5(u32 value, void *context)
{
	struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *obj;
	acpi_status status;

	status = FUNC4(value, &response);
	if (FUNC0(status)) {
		FUNC3("Bad event status 0x%x\n", status);
		return;
	}

	obj = (union acpi_object *)response.pointer;
	if (!obj)
		return;

	/* TODO: Add proper checks once we have data */
	FUNC2("Unknown event received, obj type %x\n", obj->type);

	FUNC1(response.pointer);
}