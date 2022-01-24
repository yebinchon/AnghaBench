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
typedef  int u32 ;
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_WLAN_FUN_CTRL ; 
 int MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL ; 
 int MT_WLAN_FUN_CTRL_WLAN_EN ; 
 int MT_WLAN_FUN_CTRL_WLAN_RESET_RF ; 
 int FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct mt76x02_dev *dev, bool enable)
{
	u32 val;

	if (!enable)
		goto out;

	val = FUNC0(dev, MT_WLAN_FUN_CTRL);

	val &= ~MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL;

	if (val & MT_WLAN_FUN_CTRL_WLAN_EN) {
		val |= MT_WLAN_FUN_CTRL_WLAN_RESET_RF;
		FUNC1(dev, MT_WLAN_FUN_CTRL, val);
		FUNC3(20);

		val &= ~MT_WLAN_FUN_CTRL_WLAN_RESET_RF;
	}

	FUNC1(dev, MT_WLAN_FUN_CTRL, val);
	FUNC3(20);

out:
	FUNC2(dev, enable);
}