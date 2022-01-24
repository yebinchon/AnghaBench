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
typedef  int u8 ;
typedef  int u32 ;
struct mt7601u_dev {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  BBP_R47_F_TEMP ; 
 int /*<<< orphan*/  MT_RF_BYPASS_0 ; 
 int /*<<< orphan*/  MT_RF_SETTING_0 ; 
 int FUNC0 (struct mt7601u_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mt7601u_dev*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mt7601u_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int,int) ; 
 int FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7601u_dev*,int) ; 

__attribute__((used)) static s8 FUNC7(struct mt7601u_dev *dev)
{
	u8 bbp_val, temp;
	u32 rf_bp, rf_set;
	int i;

	rf_set = FUNC4(dev, MT_RF_SETTING_0);
	rf_bp = FUNC4(dev, MT_RF_BYPASS_0);

	FUNC5(dev, MT_RF_BYPASS_0, 0);
	FUNC5(dev, MT_RF_SETTING_0, 0x00000010);
	FUNC5(dev, MT_RF_BYPASS_0, 0x00000010);

	bbp_val = FUNC1(dev, 47, 0, 0x10);

	FUNC3(dev, 22, 0x40);

	for (i = 100; i && (bbp_val & 0x10); i--)
		bbp_val = FUNC2(dev, 47);

	temp = FUNC0(dev, bbp_val, BBP_R47_F_TEMP);

	FUNC3(dev, 22, 0);

	bbp_val = FUNC2(dev, 21);
	bbp_val |= 0x02;
	FUNC3(dev, 21, bbp_val);
	bbp_val &= ~0x02;
	FUNC3(dev, 21, bbp_val);

	FUNC5(dev, MT_RF_BYPASS_0, 0);
	FUNC5(dev, MT_RF_SETTING_0, rf_set);
	FUNC5(dev, MT_RF_BYPASS_0, rf_bp);

	FUNC6(dev, temp);
	return temp;
}