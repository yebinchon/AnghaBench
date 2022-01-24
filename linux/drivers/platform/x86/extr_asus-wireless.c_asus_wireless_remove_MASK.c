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
struct asus_wireless_data {scalar_t__ wq; int /*<<< orphan*/  led; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct asus_wireless_data* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *adev)
{
	struct asus_wireless_data *data = FUNC0(adev);

	if (data->wq) {
		FUNC2(&adev->dev, &data->led);
		FUNC1(data->wq);
	}
	return 0;
}