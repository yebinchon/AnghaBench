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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RF_BYPASS0 ; 
 int /*<<< orphan*/  RF_CONTROL0 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct rt2x00_dev *rt2x00dev, bool btxcal)
{
	u8 rf_val;

	if (btxcal)
		FUNC0(rt2x00dev, RF_CONTROL0, 0x04);
	else
		FUNC0(rt2x00dev, RF_CONTROL0, 0x02);

	FUNC0(rt2x00dev, RF_BYPASS0, 0x06);

	rf_val = FUNC1(rt2x00dev, 5, 17);
	rf_val |= 0x80;
	FUNC2(rt2x00dev, 5, 17, rf_val);

	if (btxcal) {
		FUNC2(rt2x00dev, 5, 18, 0xC1);
		FUNC2(rt2x00dev, 5, 19, 0x20);
		FUNC2(rt2x00dev, 5, 20, 0x02);
		rf_val = FUNC1(rt2x00dev, 5, 3);
		rf_val &= (~0x3F);
		rf_val |= 0x3F;
		FUNC2(rt2x00dev, 5, 3, rf_val);
		rf_val = FUNC1(rt2x00dev, 5, 4);
		rf_val &= (~0x3F);
		rf_val |= 0x3F;
		FUNC2(rt2x00dev, 5, 4, rf_val);
		FUNC2(rt2x00dev, 5, 5, 0x31);
	} else {
		FUNC2(rt2x00dev, 5, 18, 0xF1);
		FUNC2(rt2x00dev, 5, 19, 0x18);
		FUNC2(rt2x00dev, 5, 20, 0x02);
		rf_val = FUNC1(rt2x00dev, 5, 3);
		rf_val &= (~0x3F);
		rf_val |= 0x34;
		FUNC2(rt2x00dev, 5, 3, rf_val);
		rf_val = FUNC1(rt2x00dev, 5, 4);
		rf_val &= (~0x3F);
		rf_val |= 0x34;
		FUNC2(rt2x00dev, 5, 4, rf_val);
	}

	return 0;
}