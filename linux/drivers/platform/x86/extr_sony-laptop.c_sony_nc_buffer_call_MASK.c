#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_3__ {int length; int /*<<< orphan*/ * pointer; } ;
union acpi_object {scalar_t__ type; TYPE_2__ integer; TYPE_1__ buffer; } ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ ACPI_TYPE_BUFFER ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int EINVAL ; 
 size_t FUNC0 (size_t,int) ; 
 union acpi_object* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(acpi_handle handle, char *name, u64 *value,
		void *buffer, size_t buflen)
{
	int ret = 0;
	size_t len;
	union acpi_object *object = FUNC1(handle, name, value);

	if (!object)
		return -EINVAL;

	if (object->type == ACPI_TYPE_BUFFER) {
		len = FUNC0(buflen, object->buffer.length);
		FUNC3(buffer, object->buffer.pointer, len);

	} else if (object->type == ACPI_TYPE_INTEGER) {
		len = FUNC0(buflen, sizeof(object->integer.value));
		FUNC3(buffer, &object->integer.value, len);

	} else {
		FUNC4("Invalid acpi_object: expected 0x%x got 0x%x\n",
				ACPI_TYPE_BUFFER, object->type);
		ret = -EINVAL;
	}

	FUNC2(object);
	return ret;
}