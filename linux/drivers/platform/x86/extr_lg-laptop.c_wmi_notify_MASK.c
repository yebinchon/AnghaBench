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
typedef  int /*<<< orphan*/  u32 ;
struct key_entry {scalar_t__ type; } ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 scalar_t__ KE_KEY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,long,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct key_entry* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct key_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 int /*<<< orphan*/  wmi_input_dev ; 

__attribute__((used)) static void FUNC7(u32 value, void *context)
{
	struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *obj;
	acpi_status status;
	long data = (long)context;

	FUNC2("event guid %li\n", data);
	status = FUNC6(value, &response);
	if (FUNC0(status)) {
		FUNC3("Bad event status 0x%x\n", status);
		return;
	}

	obj = (union acpi_object *)response.pointer;
	if (!obj)
		return;

	if (obj->type == ACPI_TYPE_INTEGER) {
		int eventcode = obj->integer.value;
		struct key_entry *key;

		key =
		    FUNC4(wmi_input_dev, eventcode);
		if (key && key->type == KE_KEY)
			FUNC5(wmi_input_dev, key, 1, true);
	}

	FUNC2("Type: %i    Eventcode: 0x%llx\n", obj->type,
		 obj->integer.value);
	FUNC1(response.pointer);
}