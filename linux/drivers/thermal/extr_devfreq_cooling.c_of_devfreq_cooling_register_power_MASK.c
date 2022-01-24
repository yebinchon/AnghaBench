#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thermal_cooling_device {int dummy; } ;
struct device_node {int dummy; } ;
struct devfreq_cooling_power {int dummy; } ;
struct devfreq_cooling_device {int id; struct devfreq_cooling_device* freq_table; struct devfreq_cooling_device* power_table; struct thermal_cooling_device* cdev; struct devfreq_cooling_power* power_ops; struct devfreq* devfreq; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct devfreq {TYPE_1__ dev; } ;
typedef  int /*<<< orphan*/  dev_name ;
struct TYPE_5__ {int /*<<< orphan*/  power2state; int /*<<< orphan*/  state2power; int /*<<< orphan*/  get_requested_power; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct thermal_cooling_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct thermal_cooling_device*) ; 
 int FUNC2 (struct thermal_cooling_device*) ; 
 int THERMAL_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct devfreq_cooling_device*) ; 
 int /*<<< orphan*/  devfreq_cooling_get_requested_power ; 
 TYPE_2__ devfreq_cooling_ops ; 
 int /*<<< orphan*/  devfreq_cooling_power2state ; 
 int /*<<< orphan*/  devfreq_cooling_state2power ; 
 int /*<<< orphan*/  devfreq_ida ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct devfreq_cooling_device*) ; 
 struct devfreq_cooling_device* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 struct thermal_cooling_device* FUNC10 (struct device_node*,char*,struct devfreq_cooling_device*,TYPE_2__*) ; 

struct thermal_cooling_device *
FUNC11(struct device_node *np, struct devfreq *df,
				  struct devfreq_cooling_power *dfc_power)
{
	struct thermal_cooling_device *cdev;
	struct devfreq_cooling_device *dfc;
	char dev_name[THERMAL_NAME_LENGTH];
	int err;

	dfc = FUNC8(sizeof(*dfc), GFP_KERNEL);
	if (!dfc)
		return FUNC0(-ENOMEM);

	dfc->devfreq = df;

	if (dfc_power) {
		dfc->power_ops = dfc_power;

		devfreq_cooling_ops.get_requested_power =
			devfreq_cooling_get_requested_power;
		devfreq_cooling_ops.state2power = devfreq_cooling_state2power;
		devfreq_cooling_ops.power2state = devfreq_cooling_power2state;
	}

	err = FUNC4(dfc);
	if (err)
		goto free_dfc;

	err = FUNC5(&devfreq_ida, 0, 0, GFP_KERNEL);
	if (err < 0)
		goto free_tables;
	dfc->id = err;

	FUNC9(dev_name, sizeof(dev_name), "thermal-devfreq-%d", dfc->id);

	cdev = FUNC10(np, dev_name, dfc,
						  &devfreq_cooling_ops);
	if (FUNC1(cdev)) {
		err = FUNC2(cdev);
		FUNC3(df->dev.parent,
			"Failed to register devfreq cooling device (%d)\n",
			err);
		goto release_ida;
	}

	dfc->cdev = cdev;

	return cdev;

release_ida:
	FUNC6(&devfreq_ida, dfc->id);
free_tables:
	FUNC7(dfc->power_table);
	FUNC7(dfc->freq_table);
free_dfc:
	FUNC7(dfc);

	return FUNC0(err);
}