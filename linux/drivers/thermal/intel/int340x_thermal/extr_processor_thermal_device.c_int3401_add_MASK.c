#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct proc_thermal_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ PROC_THERMAL_PCI ; 
 scalar_t__ PROC_THERMAL_PLATFORM_DEV ; 
 TYPE_4__ dev_attr_tcc_offset_degree_celsius ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct proc_thermal_device*) ; 
 int /*<<< orphan*/  power_limit_attribute_group ; 
 int FUNC3 (TYPE_1__*,struct proc_thermal_device**) ; 
 scalar_t__ proc_thermal_emum_mode ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct proc_thermal_device *proc_priv;
	int ret;

	if (proc_thermal_emum_mode == PROC_THERMAL_PCI) {
		FUNC0(&pdev->dev, "error: enumerated as PCI dev\n");
		return -ENODEV;
	}

	ret = FUNC3(&pdev->dev, &proc_priv);
	if (ret)
		return ret;

	FUNC2(pdev, proc_priv);
	proc_thermal_emum_mode = PROC_THERMAL_PLATFORM_DEV;

	FUNC1(&pdev->dev, "Creating sysfs group for PROC_THERMAL_PLATFORM_DEV\n");

	ret = FUNC4(&pdev->dev.kobj, &dev_attr_tcc_offset_degree_celsius.attr);
	if (ret)
		return ret;

	ret = FUNC5(&pdev->dev.kobj, &power_limit_attribute_group);
	if (ret)
		FUNC6(&pdev->dev.kobj, &dev_attr_tcc_offset_degree_celsius.attr);

	return ret;
}