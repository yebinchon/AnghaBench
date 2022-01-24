#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct micro_battery {int /*<<< orphan*/  wq; int /*<<< orphan*/  update; int /*<<< orphan*/  micro; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 struct micro_battery* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  micro_ac_power ; 
 int /*<<< orphan*/  micro_ac_power_desc ; 
 int /*<<< orphan*/  micro_batt_power ; 
 int /*<<< orphan*/  micro_batt_power_desc ; 
 int /*<<< orphan*/  micro_battery_work ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct micro_battery*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct micro_battery *mb;
	int ret;

	mb = FUNC8(&pdev->dev, sizeof(*mb), GFP_KERNEL);
	if (!mb)
		return -ENOMEM;

	mb->micro = FUNC6(pdev->dev.parent);
	mb->wq = FUNC3("ipaq-battery-wq", WQ_MEM_RECLAIM, 0);
	if (!mb->wq)
		return -ENOMEM;

	FUNC0(&mb->update, micro_battery_work);
	FUNC9(pdev, mb);
	FUNC12(mb->wq, &mb->update, 1);

	micro_batt_power = FUNC10(&pdev->dev,
						 &micro_batt_power_desc, NULL);
	if (FUNC1(micro_batt_power)) {
		ret = FUNC2(micro_batt_power);
		goto batt_err;
	}

	micro_ac_power = FUNC10(&pdev->dev,
					       &micro_ac_power_desc, NULL);
	if (FUNC1(micro_ac_power)) {
		ret = FUNC2(micro_ac_power);
		goto ac_err;
	}

	FUNC7(&pdev->dev, "iPAQ micro battery driver\n");
	return 0;

ac_err:
	FUNC11(micro_batt_power);
batt_err:
	FUNC4(&mb->update);
	FUNC5(mb->wq);
	return ret;
}