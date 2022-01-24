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
typedef  int /*<<< orphan*/  u32 ;
struct mt7601u_dev {int raw_temp; int curr_temp; int dpd_temp; TYPE_1__* ee; } ;
struct TYPE_2__ {int ref_temp; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_CAL_DPD ; 
 int /*<<< orphan*/  MCU_CAL_LOFT ; 
 int /*<<< orphan*/  MCU_CAL_R ; 
 int /*<<< orphan*/  MCU_CAL_RXIQ ; 
 int /*<<< orphan*/  MCU_CAL_TXDCOC ; 
 int /*<<< orphan*/  MCU_CAL_TXIQ ; 
 int MT_EE_TEMPERATURE_SLOPE ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mt7601u_dev*) ; 
 int FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7601u_dev*) ; 
 int FUNC7 (struct mt7601u_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7601u_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct mt7601u_dev *dev)
{
	u32 mac_ctrl;
	int ret;

	dev->raw_temp = FUNC2(dev);
	dev->curr_temp = (dev->raw_temp - dev->ee->ref_temp) *
		MT_EE_TEMPERATURE_SLOPE;
	dev->dpd_temp = dev->curr_temp;

	mac_ctrl = FUNC5(dev, MT_MAC_SYS_CTRL);

	ret = FUNC1(dev, MCU_CAL_R, 0);
	if (ret)
		return ret;

	ret = FUNC3(dev, 0, 4);
	if (ret < 0)
		return ret;
	ret |= 0x80;
	ret = FUNC4(dev, 0, 4, ret);
	if (ret)
		return ret;
	FUNC0(2);

	ret = FUNC1(dev, MCU_CAL_TXDCOC, 0);
	if (ret)
		return ret;

	FUNC6(dev);

	ret = FUNC7(dev, true);
	if (ret)
		return ret;
	ret = FUNC1(dev, MCU_CAL_LOFT, 0);
	if (ret)
		return ret;
	ret = FUNC1(dev, MCU_CAL_TXIQ, 0);
	if (ret)
		return ret;
	ret = FUNC1(dev, MCU_CAL_RXIQ, 0);
	if (ret)
		return ret;
	ret = FUNC1(dev, MCU_CAL_DPD, dev->dpd_temp);
	if (ret)
		return ret;

	FUNC6(dev);

	FUNC9(dev);

	FUNC10(dev, MT_MAC_SYS_CTRL, mac_ctrl);

	FUNC8(dev, true);

	return 0;
}