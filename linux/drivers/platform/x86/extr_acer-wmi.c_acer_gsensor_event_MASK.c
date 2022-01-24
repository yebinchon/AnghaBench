#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int count; TYPE_2__* elements; } ;
union acpi_object {TYPE_3__ package; } ;
struct acpi_buffer {int length; union acpi_object* pointer; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  out_obj ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 int /*<<< orphan*/  ACER_CAP_ACCEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acer_wmi_accel_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int /*<<< orphan*/  gsensor_handle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	acpi_status status;
	struct acpi_buffer output;
	union acpi_object out_obj[5];

	if (!FUNC2(ACER_CAP_ACCEL))
		return -1;

	output.length = sizeof(out_obj);
	output.pointer = out_obj;

	status = FUNC1(gsensor_handle, "RDVL", NULL, &output);
	if (FUNC0(status))
		return -1;

	if (out_obj->package.count != 4)
		return -1;

	FUNC3(acer_wmi_accel_dev, ABS_X,
		(s16)out_obj->package.elements[0].integer.value);
	FUNC3(acer_wmi_accel_dev, ABS_Y,
		(s16)out_obj->package.elements[1].integer.value);
	FUNC3(acer_wmi_accel_dev, ABS_Z,
		(s16)out_obj->package.elements[2].integer.value);
	FUNC4(acer_wmi_accel_dev);
	return 0;
}