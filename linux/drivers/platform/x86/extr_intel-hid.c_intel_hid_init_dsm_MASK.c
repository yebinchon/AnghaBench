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
struct TYPE_2__ {int /*<<< orphan*/ * pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  HID_EVENT_FILTER_UUID ; 
 union acpi_object* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intel_dsm_guid ; 
 int /*<<< orphan*/  intel_hid_dsm_fn_mask ; 

__attribute__((used)) static void FUNC4(acpi_handle handle)
{
	union acpi_object *obj;

	FUNC3(HID_EVENT_FILTER_UUID, &intel_dsm_guid);

	obj = FUNC1(handle, &intel_dsm_guid, 1, 0, NULL,
				      ACPI_TYPE_BUFFER);
	if (obj) {
		intel_hid_dsm_fn_mask = *obj->buffer.pointer;
		FUNC0(obj);
	}

	FUNC2(handle, "intel_hid_dsm_fn_mask = %llx\n",
			  intel_hid_dsm_fn_mask);
}