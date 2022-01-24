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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct intel_vbtn_priv {int /*<<< orphan*/  input_dev; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  DMI_CHASSIS_TYPE ; 
 int DOCK_MODE_FLAG ; 
 int /*<<< orphan*/  SW_DOCK ; 
 int /*<<< orphan*/  SW_TABLET_MODE ; 
 int TABLET_MODE_FLAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 struct intel_vbtn_priv* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_object*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static void FUNC8(struct platform_device *device)
{
	const char *chassis_type = FUNC4(DMI_CHASSIS_TYPE);
	struct intel_vbtn_priv *priv = FUNC3(&device->dev);
	acpi_handle handle = FUNC1(&device->dev);
	struct acpi_buffer vgbs_output = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *obj;
	acpi_status status;
	int m;

	if (!(chassis_type && FUNC7(chassis_type, "31") == 0))
		goto out;

	status = FUNC2(handle, "VGBS", NULL, &vgbs_output);
	if (FUNC0(status))
		goto out;

	obj = vgbs_output.pointer;
	if (!(obj && obj->type == ACPI_TYPE_INTEGER))
		goto out;

	m = !(obj->integer.value & TABLET_MODE_FLAG);
	FUNC5(priv->input_dev, SW_TABLET_MODE, m);
	m = (obj->integer.value & DOCK_MODE_FLAG) ? 1 : 0;
	FUNC5(priv->input_dev, SW_DOCK, m);
out:
	FUNC6(vgbs_output.pointer);
}