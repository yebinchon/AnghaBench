#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct rtc_time {int tm_year; int tm_mday; scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mon; } ;
struct pm860x_rtc_pdata {int vrtc; int /*<<< orphan*/  (* sync ) (unsigned long) ;} ;
struct pm860x_rtc_info {scalar_t__ irq; int vrtc; int /*<<< orphan*/  calib_work; int /*<<< orphan*/  i2c; int /*<<< orphan*/  rtc_dev; int /*<<< orphan*/  (* sync ) (unsigned long) ;TYPE_1__* dev; struct pm860x_chip* chip; } ;
struct pm860x_chip {scalar_t__ id; int /*<<< orphan*/  dev; int /*<<< orphan*/  companion; int /*<<< orphan*/  client; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ CHIP_PM8607 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEAS2_VRTC ; 
 int /*<<< orphan*/  PM8607_MEAS_EN2 ; 
 int /*<<< orphan*/  PM8607_RTC1 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG0_ADDR ; 
 int /*<<< orphan*/  REG0_DATA ; 
 int /*<<< orphan*/  REG1_ADDR ; 
 int /*<<< orphan*/  REG1_DATA ; 
 int /*<<< orphan*/  REG2_ADDR ; 
 int /*<<< orphan*/  REG2_DATA ; 
 int /*<<< orphan*/  REG3_ADDR ; 
 int /*<<< orphan*/  REG3_DATA ; 
 int /*<<< orphan*/  RTC1_USE_XO ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  VRTC_CALIB_INTERVAL ; 
 int /*<<< orphan*/  calibrate_vrtc_work ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct pm860x_chip* FUNC4 (int /*<<< orphan*/ ) ; 
 struct pm860x_rtc_pdata* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct pm860x_rtc_info*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 struct pm860x_rtc_info* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pm860x_rtc_info*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct platform_device*,struct pm860x_rtc_info*) ; 
 int /*<<< orphan*/  pm860x_rtc_ops ; 
 int FUNC14 (TYPE_1__*,struct rtc_time*) ; 
 int FUNC15 (TYPE_1__*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct rtc_time*,unsigned long*) ; 
 int /*<<< orphan*/  rtc_update_handler ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (unsigned long) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct pm860x_chip *chip = FUNC4(pdev->dev.parent);
	struct pm860x_rtc_pdata *pdata = NULL;
	struct pm860x_rtc_info *info;
	struct rtc_time tm;
	unsigned long ticks = 0;
	int ret;

	pdata = FUNC5(&pdev->dev);

	info = FUNC8(&pdev->dev, sizeof(struct pm860x_rtc_info),
			    GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	info->irq = FUNC11(pdev, 0);
	if (info->irq < 0)
		return info->irq;

	info->chip = chip;
	info->i2c = (chip->id == CHIP_PM8607) ? chip->client : chip->companion;
	info->dev = &pdev->dev;
	FUNC6(&pdev->dev, info);

	ret = FUNC9(&pdev->dev, info->irq, NULL,
					rtc_update_handler, IRQF_ONESHOT, "rtc",
					info);
	if (ret < 0) {
		FUNC3(chip->dev, "Failed to request IRQ: #%d: %d\n",
			info->irq, ret);
		return ret;
	}

	/* set addresses of 32-bit base value for RTC time */
	FUNC12(info->i2c, REG0_ADDR, REG0_DATA);
	FUNC12(info->i2c, REG1_ADDR, REG1_DATA);
	FUNC12(info->i2c, REG2_ADDR, REG2_DATA);
	FUNC12(info->i2c, REG3_ADDR, REG3_DATA);

	ret = FUNC14(&pdev->dev, &tm);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to read initial time.\n");
		return ret;
	}
	if ((tm.tm_year < 70) || (tm.tm_year > 138)) {
		tm.tm_year = 70;
		tm.tm_mon = 0;
		tm.tm_mday = 1;
		tm.tm_hour = 0;
		tm.tm_min = 0;
		tm.tm_sec = 0;
		ret = FUNC15(&pdev->dev, &tm);
		if (ret < 0) {
			FUNC3(&pdev->dev, "Failed to set initial time.\n");
			return ret;
		}
	}
	FUNC17(&tm, &ticks);
	if (FUNC13(pdev, info)) {
		if (pdata && pdata->sync) {
			pdata->sync(ticks);
			info->sync = pdata->sync;
		}
	}

	info->rtc_dev = FUNC10(&pdev->dev, "88pm860x-rtc",
					    &pm860x_rtc_ops, THIS_MODULE);
	ret = FUNC2(info->rtc_dev);
	if (FUNC1(info->rtc_dev)) {
		FUNC3(&pdev->dev, "Failed to register RTC device: %d\n", ret);
		return ret;
	}

	/*
	 * enable internal XO instead of internal 3.25MHz clock since it can
	 * free running in PMIC power-down state.
	 */
	FUNC16(info->i2c, PM8607_RTC1, RTC1_USE_XO, RTC1_USE_XO);

#ifdef VRTC_CALIBRATION
	/* <00> -- 2.7V, <01> -- 2.9V, <10> -- 3.1V, <11> -- 3.3V */
	if (pm860x_rtc_dt_init(pdev, info)) {
		if (pdata && pdata->vrtc)
			info->vrtc = pdata->vrtc & 0x3;
		else
			info->vrtc = 1;
	}
	pm860x_set_bits(info->i2c, PM8607_MEAS_EN2, MEAS2_VRTC, MEAS2_VRTC);

	/* calibrate VRTC */
	INIT_DELAYED_WORK(&info->calib_work, calibrate_vrtc_work);
	schedule_delayed_work(&info->calib_work, VRTC_CALIB_INTERVAL);
#endif	/* VRTC_CALIBRATION */

	FUNC7(&pdev->dev, 1);

	return 0;
}