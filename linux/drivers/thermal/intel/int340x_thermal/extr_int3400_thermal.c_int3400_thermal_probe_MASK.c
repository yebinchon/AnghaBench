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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_3__ dev; } ;
struct int3400_thermal_priv {struct int3400_thermal_priv* arts; struct int3400_thermal_priv* trts; int /*<<< orphan*/  thermal; struct acpi_device* adev; int /*<<< orphan*/  rel_misc_dev_res; int /*<<< orphan*/  trt_count; int /*<<< orphan*/  art_count; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {int /*<<< orphan*/  set_mode; int /*<<< orphan*/  get_mode; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct int3400_thermal_priv**,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct int3400_thermal_priv**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  int3400_notify ; 
 int /*<<< orphan*/  int3400_thermal_get_mode ; 
 int FUNC9 (struct int3400_thermal_priv*) ; 
 TYPE_1__ int3400_thermal_ops ; 
 int /*<<< orphan*/  int3400_thermal_params ; 
 int /*<<< orphan*/  int3400_thermal_set_mode ; 
 int /*<<< orphan*/  FUNC10 (struct int3400_thermal_priv*) ; 
 struct int3400_thermal_priv* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct int3400_thermal_priv*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct int3400_thermal_priv*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uuid_attribute_group ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct acpi_device *adev = FUNC0(&pdev->dev);
	struct int3400_thermal_priv *priv;
	int result;

	if (!adev)
		return -ENODEV;

	priv = FUNC11(sizeof(struct int3400_thermal_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->adev = adev;

	result = FUNC9(priv);
	if (result)
		goto free_priv;

	result = FUNC4(priv->adev->handle, &priv->art_count,
				&priv->arts, true);
	if (result)
		FUNC8(&pdev->dev, "_ART table parsing error\n");

	result = FUNC5(priv->adev->handle, &priv->trt_count,
				&priv->trts, true);
	if (result)
		FUNC8(&pdev->dev, "_TRT table parsing error\n");

	FUNC12(pdev, priv);

	int3400_thermal_ops.get_mode = int3400_thermal_get_mode;
	int3400_thermal_ops.set_mode = int3400_thermal_set_mode;

	priv->thermal = FUNC15("INT3400 Thermal", 0, 0,
						priv, &int3400_thermal_ops,
						&int3400_thermal_params, 0, 0);
	if (FUNC1(priv->thermal)) {
		result = FUNC2(priv->thermal);
		goto free_art_trt;
	}

	priv->rel_misc_dev_res = FUNC6(
							priv->adev->handle);

	result = FUNC13(&pdev->dev.kobj, &uuid_attribute_group);
	if (result)
		goto free_rel_misc;

	result = FUNC3(
			priv->adev->handle, ACPI_DEVICE_NOTIFY, int3400_notify,
			(void *)priv);
	if (result)
		goto free_sysfs;

	return 0;

free_sysfs:
	FUNC14(&pdev->dev.kobj, &uuid_attribute_group);
free_rel_misc:
	if (!priv->rel_misc_dev_res)
		FUNC7(priv->adev->handle);
	FUNC16(priv->thermal);
free_art_trt:
	FUNC10(priv->trts);
	FUNC10(priv->arts);
free_priv:
	FUNC10(priv);
	return result;
}