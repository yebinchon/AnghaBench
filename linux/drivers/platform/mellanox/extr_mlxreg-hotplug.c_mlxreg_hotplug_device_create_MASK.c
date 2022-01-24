#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlxreg_hotplug_priv_data {int /*<<< orphan*/  dev; TYPE_2__* pdev; TYPE_1__* hwmon; } ;
struct mlxreg_core_hotplug_platform_data {scalar_t__ shift_nr; } ;
struct TYPE_7__ {scalar_t__ nr; int /*<<< orphan*/ * adapter; TYPE_4__* brdinfo; int /*<<< orphan*/  client; } ;
struct mlxreg_core_data {TYPE_3__ hpdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 struct mlxreg_core_hotplug_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mlxreg_hotplug_priv_data *priv,
					struct mlxreg_core_data *data)
{
	struct mlxreg_core_hotplug_platform_data *pdata;

	/* Notify user by sending hwmon uevent. */
	FUNC5(&priv->hwmon->kobj, KOBJ_CHANGE);

	/*
	 * Return if adapter number is negative. It could be in case hotplug
	 * event is not associated with hotplug device.
	 */
	if (data->hpdev.nr < 0)
		return 0;

	pdata = FUNC1(&priv->pdev->dev);
	data->hpdev.adapter = FUNC2(data->hpdev.nr +
					      pdata->shift_nr);
	if (!data->hpdev.adapter) {
		FUNC0(priv->dev, "Failed to get adapter for bus %d\n",
			data->hpdev.nr + pdata->shift_nr);
		return -EFAULT;
	}

	data->hpdev.client = FUNC3(data->hpdev.adapter,
					    data->hpdev.brdinfo);
	if (!data->hpdev.client) {
		FUNC0(priv->dev, "Failed to create client %s at bus %d at addr 0x%02x\n",
			data->hpdev.brdinfo->type, data->hpdev.nr +
			pdata->shift_nr, data->hpdev.brdinfo->addr);

		FUNC4(data->hpdev.adapter);
		data->hpdev.adapter = NULL;
		return -EFAULT;
	}

	return 0;
}