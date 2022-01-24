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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CFG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int MT_WLAN_MTC_CTRL_MTCMOS_PWR_UP ; 
 int MT_WLAN_MTC_CTRL_PWR_ACK ; 
 int MT_WLAN_MTC_CTRL_PWR_ACK_S ; 
 int MT_WLAN_MTC_CTRL_STATE_UP ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct mt76x02_dev *dev)
{
	u32 val;

	/* Turn on WL MTCMOS */
	FUNC4(dev, FUNC1(CFG, 0x148),
		 MT_WLAN_MTC_CTRL_MTCMOS_PWR_UP);

	val = MT_WLAN_MTC_CTRL_STATE_UP |
	      MT_WLAN_MTC_CTRL_PWR_ACK |
	      MT_WLAN_MTC_CTRL_PWR_ACK_S;

	FUNC3(dev, FUNC1(CFG, 0x148), val, val, 1000);

	FUNC2(dev, FUNC1(CFG, 0x148), 0x7f << 16);
	FUNC6(10, 20);

	FUNC2(dev, FUNC1(CFG, 0x148), 0xf << 24);
	FUNC6(10, 20);

	FUNC4(dev, FUNC1(CFG, 0x148), 0xf << 24);
	FUNC2(dev, FUNC1(CFG, 0x148), 0xfff);

	/* Turn on AD/DA power down */
	FUNC2(dev, FUNC1(CFG, 0x1204), FUNC0(3));

	/* WLAN function enable */
	FUNC4(dev, FUNC1(CFG, 0x80), FUNC0(0));

	/* Release BBP software reset */
	FUNC2(dev, FUNC1(CFG, 0x64), FUNC0(18));

	FUNC5(dev, 0);
	FUNC5(dev, 1);
}