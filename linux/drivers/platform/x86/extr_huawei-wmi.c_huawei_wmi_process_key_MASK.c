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
struct wmi_device {int /*<<< orphan*/  dev; } ;
struct key_entry {int dummy; } ;
struct huawei_wmi_priv {int /*<<< orphan*/  idev; } ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  WMI0_EXPENSIVE_GUID ; 
 struct huawei_wmi_priv* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct key_entry* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct key_entry const*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer*) ; 

__attribute__((used)) static void FUNC7(struct wmi_device *wdev, int code)
{
	struct huawei_wmi_priv *priv = FUNC1(&wdev->dev);
	const struct key_entry *key;

	/*
	 * WMI0 uses code 0x80 to indicate a hotkey event.
	 * The actual key is fetched from the method WQ00
	 * using WMI0_EXPENSIVE_GUID.
	 */
	if (code == 0x80) {
		struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, NULL };
		union acpi_object *obj;
		acpi_status status;

		status = FUNC6(WMI0_EXPENSIVE_GUID, 0, &response);
		if (FUNC0(status))
			return;

		obj = (union acpi_object *)response.pointer;
		if (obj && obj->type == ACPI_TYPE_INTEGER)
			code = obj->integer.value;

		FUNC3(response.pointer);
	}

	key = FUNC4(priv->idev, code);
	if (!key) {
		FUNC2(&wdev->dev, "Unknown key pressed, code: 0x%04x\n", code);
		return;
	}

	FUNC5(priv->idev, key, 1, true);
}