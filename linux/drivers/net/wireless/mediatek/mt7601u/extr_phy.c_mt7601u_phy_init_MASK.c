#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct mt7601u_dev {int prev_pwr_diff; TYPE_2__ freq_cal; int /*<<< orphan*/  cal_work; TYPE_1__* ee; void** rf_pa_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  rf_freq_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_RF_PA_MODE_CFG0 ; 
 int /*<<< orphan*/  MT_RF_PA_MODE_CFG1 ; 
 int FUNC2 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  mt7601u_phy_calibrate ; 
 int /*<<< orphan*/  mt7601u_phy_freq_cal ; 
 int FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rf_central ; 
 int /*<<< orphan*/  rf_channel ; 
 int /*<<< orphan*/  rf_vga ; 

int FUNC6(struct mt7601u_dev *dev)
{
	int ret;

	dev->rf_pa_mode[0] = FUNC4(dev, MT_RF_PA_MODE_CFG0);
	dev->rf_pa_mode[1] = FUNC4(dev, MT_RF_PA_MODE_CFG1);

	ret = FUNC3(dev, 0, 12, dev->ee->rf_freq_off);
	if (ret)
		return ret;
	ret = FUNC5(dev, 0, rf_central,
				      FUNC0(rf_central));
	if (ret)
		return ret;
	ret = FUNC5(dev, 0, rf_channel,
				      FUNC0(rf_channel));
	if (ret)
		return ret;
	ret = FUNC5(dev, 0, rf_vga, FUNC0(rf_vga));
	if (ret)
		return ret;

	ret = FUNC2(dev);
	if (ret)
		return ret;

	dev->prev_pwr_diff = 100;

	FUNC1(&dev->cal_work, mt7601u_phy_calibrate);
	FUNC1(&dev->freq_cal.work, mt7601u_phy_freq_cal);

	return 0;
}