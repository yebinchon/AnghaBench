#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union acpi_object {int dummy; } acpi_object ;
struct xiaomi_wmi {int /*<<< orphan*/  input_dev; int /*<<< orphan*/  key_code; } ;
struct wmi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct xiaomi_wmi* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct wmi_device *wdev, union acpi_object *dummy)
{
	struct xiaomi_wmi *data;

	if (wdev == NULL)
		return;

	data = FUNC0(&wdev->dev);
	if (data == NULL)
		return;

	FUNC1(data->input_dev, data->key_code, 1);
	FUNC2(data->input_dev);
	FUNC1(data->input_dev, data->key_code, 0);
	FUNC2(data->input_dev);
}