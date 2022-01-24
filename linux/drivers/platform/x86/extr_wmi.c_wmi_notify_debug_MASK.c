#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int count; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int pointer; } ;
struct TYPE_5__ {int length; } ;
union acpi_object {int type; TYPE_4__ package; TYPE_3__ integer; TYPE_2__ string; TYPE_1__ buffer; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
#define  ACPI_TYPE_BUFFER 131 
#define  ACPI_TYPE_INTEGER 130 
#define  ACPI_TYPE_PACKAGE 129 
#define  ACPI_TYPE_STRING 128 
 scalar_t__ AE_OK ; 
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct acpi_buffer*) ; 

__attribute__((used)) static void FUNC4(u32 value, void *context)
{
	struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *obj;
	acpi_status status;

	status = FUNC3(value, &response);
	if (status != AE_OK) {
		FUNC2("bad event status 0x%x\n", status);
		return;
	}

	obj = (union acpi_object *)response.pointer;

	if (!obj)
		return;

	FUNC2("DEBUG Event ");
	switch(obj->type) {
	case ACPI_TYPE_BUFFER:
		FUNC1("BUFFER_TYPE - length %d\n", obj->buffer.length);
		break;
	case ACPI_TYPE_STRING:
		FUNC1("STRING_TYPE - %s\n", obj->string.pointer);
		break;
	case ACPI_TYPE_INTEGER:
		FUNC1("INTEGER_TYPE - %llu\n", obj->integer.value);
		break;
	case ACPI_TYPE_PACKAGE:
		FUNC1("PACKAGE_TYPE - %d elements\n", obj->package.count);
		break;
	default:
		FUNC1("object type 0x%X\n", obj->type);
	}
	FUNC0(obj);
}