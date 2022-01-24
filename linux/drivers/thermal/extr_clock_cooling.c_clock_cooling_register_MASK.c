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
struct thermal_cooling_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct clock_cooling_device {int id; TYPE_1__ clk_rate_change_nb; struct thermal_cooling_device* clk; int /*<<< orphan*/  clock_val; scalar_t__ clock_state; int /*<<< orphan*/  freq_table; struct thermal_cooling_device* cdev; struct device* dev; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  dev_name ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct thermal_cooling_device* FUNC0 (struct thermal_cooling_device*) ; 
 struct thermal_cooling_device* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct thermal_cooling_device*) ; 
 int THERMAL_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (struct thermal_cooling_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  clock_cooling_clock_notifier ; 
 int /*<<< orphan*/  FUNC4 (struct clock_cooling_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clock_cooling_ops ; 
 int /*<<< orphan*/  clock_ida ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct thermal_cooling_device* FUNC6 (struct device*,char const*) ; 
 struct clock_cooling_device* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 struct thermal_cooling_device* FUNC12 (char*,struct clock_cooling_device*,int /*<<< orphan*/ *) ; 

struct thermal_cooling_device *
FUNC13(struct device *dev, const char *clock_name)
{
	struct thermal_cooling_device *cdev;
	struct clock_cooling_device *ccdev = NULL;
	char dev_name[THERMAL_NAME_LENGTH];
	int ret = 0;

	ccdev = FUNC7(dev, sizeof(*ccdev), GFP_KERNEL);
	if (!ccdev)
		return FUNC1(-ENOMEM);

	FUNC10(&ccdev->lock);
	ccdev->dev = dev;
	ccdev->clk = FUNC6(dev, clock_name);
	if (FUNC2(ccdev->clk))
		return FUNC0(ccdev->clk);

	ret = FUNC8(&clock_ida, 0, 0, GFP_KERNEL);
	if (ret < 0)
		return FUNC1(ret);
	ccdev->id = ret;

	FUNC11(dev_name, sizeof(dev_name), "thermal-clock-%d", ccdev->id);

	cdev = FUNC12(dev_name, ccdev,
					       &clock_cooling_ops);
	if (FUNC2(cdev)) {
		FUNC9(&clock_ida, ccdev->id);
		return FUNC1(-EINVAL);
	}
	ccdev->cdev = cdev;
	ccdev->clk_rate_change_nb.notifier_call = clock_cooling_clock_notifier;

	/* Assuming someone has already filled the opp table for this device */
	ret = FUNC5(dev, &ccdev->freq_table);
	if (ret) {
		FUNC9(&clock_ida, ccdev->id);
		return FUNC1(ret);
	}
	ccdev->clock_state = 0;
	ccdev->clock_val = FUNC4(ccdev, 0);

	FUNC3(ccdev->clk, &ccdev->clk_rate_change_nb);

	return cdev;
}