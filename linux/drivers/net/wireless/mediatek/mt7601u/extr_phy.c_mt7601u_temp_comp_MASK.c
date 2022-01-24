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
struct mt7601u_dev {int raw_temp; int curr_temp; int dpd_temp; int pll_lock_protect; int /*<<< orphan*/  dev; TYPE_1__* ee; } ;
struct TYPE_2__ {int ref_temp; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_CAL_DPD ; 
 int MT_EE_TEMPERATURE_SLOPE ; 
 int /*<<< orphan*/  MT_TEMP_MODE_HIGH ; 
 int /*<<< orphan*/  MT_TEMP_MODE_LOW ; 
 int /*<<< orphan*/  MT_TEMP_MODE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7601u_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7601u_dev*) ; 

__attribute__((used)) static int FUNC7(struct mt7601u_dev *dev, bool on)
{
	int ret, temp, hi_temp = 400, lo_temp = -200;

	temp = (dev->raw_temp - dev->ee->ref_temp) * MT_EE_TEMPERATURE_SLOPE;
	dev->curr_temp = temp;

	/* DPD Calibration */
	if (temp - dev->dpd_temp > 450 || temp - dev->dpd_temp < -450) {
		dev->dpd_temp = temp;

		ret = FUNC2(dev, MCU_CAL_DPD, dev->dpd_temp);
		if (ret)
			return ret;

		FUNC6(dev);

		FUNC0(dev->dev, "Recalibrate DPD\n");
	}

	/* PLL Lock Protect */
	if (temp < -50 && !dev->pll_lock_protect) { /* < 20C */
		dev->pll_lock_protect =  true;

		FUNC5(dev, 4, 4, 6);
		FUNC3(dev, 4, 10, 0x30);

		FUNC0(dev->dev, "PLL lock protect on - too cold\n");
	} else if (temp > 50 && dev->pll_lock_protect) { /* > 30C */
		dev->pll_lock_protect = false;

		FUNC5(dev, 4, 4, 0);
		FUNC4(dev, 4, 10, 0x30, 0x10);

		FUNC0(dev->dev, "PLL lock protect off\n");
	}

	if (on) {
		hi_temp -= 50;
		lo_temp -= 50;
	}

	/* BBP CR for H, L, N temperature */
	if (temp > hi_temp)
		return FUNC1(dev, MT_TEMP_MODE_HIGH, "high");
	else if (temp > lo_temp)
		return FUNC1(dev, MT_TEMP_MODE_NORMAL, "normal");
	else
		return FUNC1(dev, MT_TEMP_MODE_LOW, "low");
}