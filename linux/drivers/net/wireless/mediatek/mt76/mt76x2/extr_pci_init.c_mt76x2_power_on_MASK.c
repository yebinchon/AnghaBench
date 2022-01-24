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
 int MT_WLAN_MTC_CTRL ; 
 int MT_WLAN_MTC_CTRL_MTCMOS_PWR_UP ; 
 int MT_WLAN_MTC_CTRL_PWR_ACK ; 
 int MT_WLAN_MTC_CTRL_PWR_ACK_S ; 
 int MT_WLAN_MTC_CTRL_STATE_UP ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct mt76x02_dev *dev)
{
	u32 val;

	/* Turn on WL MTCMOS */
	FUNC3(dev, MT_WLAN_MTC_CTRL, MT_WLAN_MTC_CTRL_MTCMOS_PWR_UP);

	val = MT_WLAN_MTC_CTRL_STATE_UP |
	      MT_WLAN_MTC_CTRL_PWR_ACK |
	      MT_WLAN_MTC_CTRL_PWR_ACK_S;

	FUNC2(dev, MT_WLAN_MTC_CTRL, val, val, 1000);

	FUNC1(dev, MT_WLAN_MTC_CTRL, 0x7f << 16);
	FUNC5(10);

	FUNC1(dev, MT_WLAN_MTC_CTRL, 0xf << 24);
	FUNC5(10);

	FUNC3(dev, MT_WLAN_MTC_CTRL, 0xf << 24);
	FUNC1(dev, MT_WLAN_MTC_CTRL, 0xfff);

	/* Turn on AD/DA power down */
	FUNC1(dev, 0x11204, FUNC0(3));

	/* WLAN function enable */
	FUNC3(dev, 0x10080, FUNC0(0));

	/* Release BBP software reset */
	FUNC1(dev, 0x10064, FUNC0(18));

	FUNC4(dev, 0);
	FUNC4(dev, 1);
}