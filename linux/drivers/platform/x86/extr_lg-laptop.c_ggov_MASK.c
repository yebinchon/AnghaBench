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
typedef  int u32 ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_string ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ SB_GGOV_METHOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_object_list*,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(u32 arg0)
{
	union acpi_object args[1];
	union acpi_object *r;
	acpi_status status;
	acpi_handle handle;
	struct acpi_object_list arg;
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
	int res;

	args[0].type = ACPI_TYPE_INTEGER;
	args[0].integer.value = arg0;

	status = FUNC2(NULL, (acpi_string) SB_GGOV_METHOD, &handle);
	if (FUNC0(status)) {
		FUNC5("Cannot get handle");
		return -ENODEV;
	}

	arg.count = 1;
	arg.pointer = args;

	status = FUNC1(handle, NULL, &arg, &buffer);
	if (FUNC0(status)) {
		FUNC3(handle, "GGOV: call failed.\n");
		return -EINVAL;
	}

	r = buffer.pointer;
	if (r->type != ACPI_TYPE_INTEGER) {
		FUNC4(r);
		return -EINVAL;
	}

	res = r->integer.value;
	FUNC4(r);

	return res;
}