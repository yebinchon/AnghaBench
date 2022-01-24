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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct regulator_dev {int /*<<< orphan*/  debugfs; TYPE_1__ dev; int /*<<< orphan*/  consumer_list; } ;
struct regulator {int always_on; int /*<<< orphan*/  list; int /*<<< orphan*/  debugfs; TYPE_2__* voltage; int /*<<< orphan*/  uA_load; int /*<<< orphan*/ * supply_name; struct device* dev; struct regulator_dev* rdev; } ;
struct TYPE_6__ {char* name; } ;
struct device {TYPE_3__ kobj; } ;
struct TYPE_5__ {int /*<<< orphan*/  max_uV; int /*<<< orphan*/  min_uV; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PM_SUSPEND_ON ; 
 int /*<<< orphan*/  REGULATOR_CHANGE_STATUS ; 
 int REG_STR_SIZE ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  constraint_flags_fops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,struct regulator*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 struct regulator* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct regulator_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct regulator_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct regulator_dev*) ; 
 int FUNC14 (char*,int,char*,char*,char const*) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_3__*,char*) ; 

__attribute__((used)) static struct regulator *FUNC16(struct regulator_dev *rdev,
					  struct device *dev,
					  const char *supply_name)
{
	struct regulator *regulator;
	char buf[REG_STR_SIZE];
	int err, size;

	regulator = FUNC7(sizeof(*regulator), GFP_KERNEL);
	if (regulator == NULL)
		return NULL;

	FUNC11(rdev);
	regulator->rdev = rdev;
	FUNC8(&regulator->list, &rdev->consumer_list);

	if (dev) {
		regulator->dev = dev;

		/* Add a link to the device sysfs entry */
		size = FUNC14(buf, REG_STR_SIZE, "%s-%s",
				dev->kobj.name, supply_name);
		if (size >= REG_STR_SIZE)
			goto overflow_err;

		regulator->supply_name = FUNC5(buf, GFP_KERNEL);
		if (regulator->supply_name == NULL)
			goto overflow_err;

		err = FUNC15(&rdev->dev.kobj, &dev->kobj,
					buf);
		if (err) {
			FUNC10(rdev, "could not add device link %s err %d\n",
				  dev->kobj.name, err);
			/* non-fatal */
		}
	} else {
		regulator->supply_name = FUNC6(supply_name, GFP_KERNEL);
		if (regulator->supply_name == NULL)
			goto overflow_err;
	}

	regulator->debugfs = FUNC1(regulator->supply_name,
						rdev->debugfs);
	if (!regulator->debugfs) {
		FUNC10(rdev, "Failed to create debugfs directory\n");
	} else {
		FUNC3("uA_load", 0444, regulator->debugfs,
				   &regulator->uA_load);
		FUNC3("min_uV", 0444, regulator->debugfs,
				   &regulator->voltage[PM_SUSPEND_ON].min_uV);
		FUNC3("max_uV", 0444, regulator->debugfs,
				   &regulator->voltage[PM_SUSPEND_ON].max_uV);
		FUNC2("constraint_flags", 0444,
				    regulator->debugfs, regulator,
				    &constraint_flags_fops);
	}

	/*
	 * Check now if the regulator is an always on regulator - if
	 * it is then we don't need to do nearly so much work for
	 * enable/disable calls.
	 */
	if (!FUNC12(rdev, REGULATOR_CHANGE_STATUS) &&
	    FUNC0(rdev))
		regulator->always_on = true;

	FUNC13(rdev);
	return regulator;
overflow_err:
	FUNC9(&regulator->list);
	FUNC4(regulator);
	FUNC13(rdev);
	return NULL;
}