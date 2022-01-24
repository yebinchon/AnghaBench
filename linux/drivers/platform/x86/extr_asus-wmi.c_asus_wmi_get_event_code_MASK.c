#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int EIO ; 
 int WMI_EVENT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct acpi_buffer*) ; 

__attribute__((used)) static int FUNC5(u32 value)
{
	struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *obj;
	acpi_status status;
	int code;

	status = FUNC4(value, &response);
	if (FUNC0(status)) {
		FUNC3("Failed to get WMI notify code: %s\n",
				FUNC1(status));
		return -EIO;
	}

	obj = (union acpi_object *)response.pointer;

	if (obj && obj->type == ACPI_TYPE_INTEGER)
		code = (int)(obj->integer.value & WMI_EVENT_MASK);
	else
		code = -EIO;

	FUNC2(obj);
	return code;
}