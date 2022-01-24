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
struct thermal_zone_device_ops {int dummy; } ;
struct proc_thermal_device {int /*<<< orphan*/  int340x_zone; struct acpi_device* adev; struct device* dev; } ;
struct device {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 struct proc_thermal_device* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_device*,struct thermal_zone_device_ops*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct thermal_zone_device_ops proc_thermal_local_ops ; 
 int /*<<< orphan*/  proc_thermal_notify ; 
 int FUNC10 (struct proc_thermal_device*) ; 
 scalar_t__ stored_tjmax ; 

__attribute__((used)) static int FUNC11(struct device *dev,
			    struct proc_thermal_device **priv)
{
	struct proc_thermal_device *proc_priv;
	struct acpi_device *adev;
	acpi_status status;
	unsigned long long tmp;
	struct thermal_zone_device_ops *ops = NULL;
	int ret;

	adev = FUNC0(dev);
	if (!adev)
		return -ENODEV;

	proc_priv = FUNC6(dev, sizeof(*proc_priv), GFP_KERNEL);
	if (!proc_priv)
		return -ENOMEM;

	proc_priv->dev = dev;
	proc_priv->adev = adev;
	*priv = proc_priv;

	ret = FUNC10(proc_priv);
	if (ret)
		return ret;

	status = FUNC4(adev->handle, "_TMP", NULL, &tmp);
	if (FUNC1(status)) {
		/* there is no _TMP method, add local method */
		stored_tjmax = FUNC7();
		if (stored_tjmax > 0)
			ops = &proc_thermal_local_ops;
	}

	proc_priv->int340x_zone = FUNC8(adev, ops);
	if (FUNC2(proc_priv->int340x_zone)) {
		return FUNC3(proc_priv->int340x_zone);
	} else
		ret = 0;

	ret = FUNC5(adev->handle, ACPI_DEVICE_NOTIFY,
					  proc_thermal_notify,
					  (void *)proc_priv);
	if (ret)
		goto remove_zone;

	return 0;

remove_zone:
	FUNC9(proc_priv->int340x_zone);

	return ret;
}