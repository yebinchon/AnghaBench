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
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct int3400_thermal_priv {struct int3400_thermal_priv* arts; struct int3400_thermal_priv* trts; int /*<<< orphan*/  thermal; TYPE_1__* adev; int /*<<< orphan*/  rel_misc_dev_res; } ;
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int3400_notify ; 
 int /*<<< orphan*/  FUNC2 (struct int3400_thermal_priv*) ; 
 struct int3400_thermal_priv* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uuid_attribute_group ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct int3400_thermal_priv *priv = FUNC3(pdev);

	FUNC0(
			priv->adev->handle, ACPI_DEVICE_NOTIFY,
			int3400_notify);

	if (!priv->rel_misc_dev_res)
		FUNC1(priv->adev->handle);

	FUNC4(&pdev->dev.kobj, &uuid_attribute_group);
	FUNC5(priv->thermal);
	FUNC2(priv->trts);
	FUNC2(priv->arts);
	FUNC2(priv);
	return 0;
}