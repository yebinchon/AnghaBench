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
struct platform_device_id {scalar_t__ driver_data; } ;
struct platform_device {size_t id; int /*<<< orphan*/  dev; } ;
struct intel_pinctrl_soc_data {int /*<<< orphan*/  uid; } ;
struct TYPE_2__ {int /*<<< orphan*/  unique_id; } ;
struct acpi_device {TYPE_1__ pnp; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct platform_device*,struct intel_pinctrl_soc_data const*) ; 
 struct platform_device_id* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct platform_device *pdev)
{
	const struct intel_pinctrl_soc_data *data = NULL;
	const struct intel_pinctrl_soc_data **table;
	struct acpi_device *adev;
	unsigned int i;

	adev = FUNC0(&pdev->dev);
	if (adev) {
		const void *match = FUNC1(&pdev->dev);

		table = (const struct intel_pinctrl_soc_data **)match;
		for (i = 0; table[i]; i++) {
			if (!FUNC4(adev->pnp.unique_id, table[i]->uid)) {
				data = table[i];
				break;
			}
		}
	} else {
		const struct platform_device_id *id;

		id = FUNC3(pdev);
		if (!id)
			return -ENODEV;

		table = (const struct intel_pinctrl_soc_data **)id->driver_data;
		data = table[pdev->id];
	}

	return FUNC2(pdev, data);
}