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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_2__ {int rt; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_BBP_REG_ID ; 
 unsigned int EEPROM_BBP_SIZE ; 
 int /*<<< orphan*/  EEPROM_BBP_START ; 
 int /*<<< orphan*/  EEPROM_BBP_VALUE ; 
#define  RT2860 144 
#define  RT2872 143 
#define  RT2883 142 
#define  RT3070 141 
#define  RT3071 140 
#define  RT3090 139 
#define  RT3290 138 
#define  RT3352 137 
#define  RT3390 136 
#define  RT3572 135 
#define  RT3593 134 
#define  RT3883 133 
#define  RT5350 132 
#define  RT5390 131 
#define  RT5392 130 
#define  RT5592 129 
#define  RT6352 128 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC14 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct rt2x00_dev *rt2x00dev)
{
	unsigned int i;
	u16 eeprom;
	u8 reg_id;
	u8 value;

	if (FUNC14(rt2x00dev))
		FUNC3(rt2x00dev);

	switch (rt2x00dev->chip.rt) {
	case RT2860:
	case RT2872:
	case RT2883:
		FUNC2(rt2x00dev);
		break;
	case RT3070:
	case RT3071:
	case RT3090:
		FUNC4(rt2x00dev);
		break;
	case RT3290:
		FUNC5(rt2x00dev);
		break;
	case RT3352:
	case RT5350:
		FUNC6(rt2x00dev);
		break;
	case RT3390:
		FUNC7(rt2x00dev);
		break;
	case RT3572:
		FUNC8(rt2x00dev);
		break;
	case RT3593:
		FUNC9(rt2x00dev);
		return;
	case RT3883:
		FUNC10(rt2x00dev);
		return;
	case RT5390:
	case RT5392:
		FUNC11(rt2x00dev);
		break;
	case RT5592:
		FUNC12(rt2x00dev);
		return;
	case RT6352:
		FUNC13(rt2x00dev);
		break;
	}

	for (i = 0; i < EEPROM_BBP_SIZE; i++) {
		eeprom = FUNC1(rt2x00dev,
						       EEPROM_BBP_START, i);

		if (eeprom != 0xffff && eeprom != 0x0000) {
			reg_id = FUNC15(eeprom, EEPROM_BBP_REG_ID);
			value = FUNC15(eeprom, EEPROM_BBP_VALUE);
			FUNC0(rt2x00dev, reg_id, value);
		}
	}
}