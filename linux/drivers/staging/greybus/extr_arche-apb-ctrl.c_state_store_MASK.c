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
struct platform_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct arche_apb_ctrl_drvdata {scalar_t__ state; int init_disabled; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ ARCHE_PLATFORM_STATE_ACTIVE ; 
 scalar_t__ ARCHE_PLATFORM_STATE_FW_FLASHING ; 
 scalar_t__ ARCHE_PLATFORM_STATE_OFF ; 
 scalar_t__ ARCHE_PLATFORM_STATE_STANDBY ; 
 int EINVAL ; 
 int FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct platform_device*) ; 
 struct arche_apb_ctrl_drvdata* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int FUNC5 (struct platform_device*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 struct platform_device* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct platform_device *pdev = FUNC7(dev);
	struct arche_apb_ctrl_drvdata *apb = FUNC3(pdev);
	int ret = 0;
	bool is_disabled;

	if (FUNC6(buf, "off")) {
		if (apb->state == ARCHE_PLATFORM_STATE_OFF)
			return count;

		FUNC4(pdev);
	} else if (FUNC6(buf, "active")) {
		if (apb->state == ARCHE_PLATFORM_STATE_ACTIVE)
			return count;

		FUNC4(pdev);
		is_disabled = apb->init_disabled;
		apb->init_disabled = false;
		ret = FUNC0(pdev);
		if (ret)
			apb->init_disabled = is_disabled;
	} else if (FUNC6(buf, "standby")) {
		if (apb->state == ARCHE_PLATFORM_STATE_STANDBY)
			return count;

		ret = FUNC5(pdev);
	} else if (FUNC6(buf, "fw_flashing")) {
		if (apb->state == ARCHE_PLATFORM_STATE_FW_FLASHING)
			return count;

		/*
		 * First we want to make sure we power off everything
		 * and then enter FW flashing state
		 */
		FUNC4(pdev);
		ret = FUNC2(pdev);
	} else {
		FUNC1(dev, "unknown state\n");
		ret = -EINVAL;
	}

	return ret ? ret : count;
}