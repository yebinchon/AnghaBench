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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct arche_platform_drvdata {scalar_t__ state; int /*<<< orphan*/  platform_state_mutex; int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ ARCHE_PLATFORM_STATE_ACTIVE ; 
 scalar_t__ ARCHE_PLATFORM_STATE_FW_FLASHING ; 
 scalar_t__ ARCHE_PLATFORM_STATE_OFF ; 
 scalar_t__ ARCHE_PLATFORM_STATE_STANDBY ; 
 int EINVAL ; 
 int /*<<< orphan*/  apb_poweroff ; 
 int FUNC0 (struct arche_platform_drvdata*) ; 
 int FUNC1 (struct arche_platform_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct arche_platform_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct arche_platform_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct arche_platform_drvdata* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct arche_platform_drvdata *arche_pdata = FUNC5(dev);
	int ret = 0;

	FUNC8(&arche_pdata->platform_state_mutex);

	if (FUNC10(buf, "off")) {
		if (arche_pdata->state == ARCHE_PLATFORM_STATE_OFF)
			goto exit;

		/*  If SVC goes down, bring down APB's as well */
		FUNC7(arche_pdata->dev, NULL, apb_poweroff);

		FUNC2(arche_pdata);

	} else if (FUNC10(buf, "active")) {
		if (arche_pdata->state == ARCHE_PLATFORM_STATE_ACTIVE)
			goto exit;

		/* First we want to make sure we power off everything
		 * and then activate back again
		 */
		FUNC7(arche_pdata->dev, NULL, apb_poweroff);
		FUNC2(arche_pdata);

		FUNC3(arche_pdata);
		ret = FUNC0(arche_pdata);
		if (ret)
			goto exit;

	} else if (FUNC10(buf, "standby")) {
		if (arche_pdata->state == ARCHE_PLATFORM_STATE_STANDBY)
			goto exit;

		FUNC6(arche_pdata->dev, "standby state not supported\n");
	} else if (FUNC10(buf, "fw_flashing")) {
		if (arche_pdata->state == ARCHE_PLATFORM_STATE_FW_FLASHING)
			goto exit;

		/*
		 * Here we only control SVC.
		 *
		 * In case of FW_FLASHING mode we do not want to control
		 * APBs, as in case of V2, SPI bus is shared between both
		 * the APBs. So let user chose which APB he wants to flash.
		 */
		FUNC2(arche_pdata);

		ret = FUNC1(arche_pdata);
		if (ret)
			goto exit;
	} else {
		FUNC4(arche_pdata->dev, "unknown state\n");
		ret = -EINVAL;
	}

exit:
	FUNC9(&arche_pdata->platform_state_mutex);
	return ret ? ret : count;
}