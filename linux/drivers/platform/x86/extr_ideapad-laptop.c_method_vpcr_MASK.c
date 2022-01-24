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
union acpi_object {TYPE_1__ integer; int /*<<< orphan*/  type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,unsigned long long*) ; 

__attribute__((used)) static int FUNC2(acpi_handle handle, int cmd, int *ret)
{
	acpi_status status;
	unsigned long long result;
	struct acpi_object_list params;
	union acpi_object in_obj;

	params.count = 1;
	params.pointer = &in_obj;
	in_obj.type = ACPI_TYPE_INTEGER;
	in_obj.integer.value = cmd;

	status = FUNC1(handle, "VPCR", &params, &result);

	if (FUNC0(status)) {
		*ret = -1;
		return -1;
	}
	*ret = result;
	return 0;

}