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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP152_RX_DEFAULT_ANT ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_ANT_DIVERSITY ; 
 int /*<<< orphan*/  GPIO_CTRL ; 
 int /*<<< orphan*/  GPIO_CTRL_DIR3 ; 
 int /*<<< orphan*/  GPIO_CTRL_DIR6 ; 
 int /*<<< orphan*/  GPIO_CTRL_VAL3 ; 
 int /*<<< orphan*/  GPIO_CTRL_VAL6 ; 
 int /*<<< orphan*/  REV_RT5370G ; 
 int /*<<< orphan*/  REV_RT5390R ; 
 int /*<<< orphan*/  RT5390 ; 
 int /*<<< orphan*/  RT5392 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int FUNC2 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC11 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC15(struct rt2x00_dev *rt2x00dev)
{
	int ant, div_mode;
	u16 eeprom;
	u8 value;

	FUNC1(rt2x00dev);

	FUNC3(rt2x00dev, 31, 0x08);

	FUNC3(rt2x00dev, 65, 0x2c);
	FUNC3(rt2x00dev, 66, 0x38);

	FUNC3(rt2x00dev, 68, 0x0b);

	FUNC3(rt2x00dev, 69, 0x12);
	FUNC3(rt2x00dev, 73, 0x13);
	FUNC3(rt2x00dev, 75, 0x46);
	FUNC3(rt2x00dev, 76, 0x28);

	FUNC3(rt2x00dev, 77, 0x59);

	FUNC3(rt2x00dev, 70, 0x0a);

	FUNC3(rt2x00dev, 79, 0x13);
	FUNC3(rt2x00dev, 80, 0x05);
	FUNC3(rt2x00dev, 81, 0x33);

	FUNC3(rt2x00dev, 82, 0x62);

	FUNC3(rt2x00dev, 83, 0x7a);

	FUNC3(rt2x00dev, 84, 0x9a);

	FUNC3(rt2x00dev, 86, 0x38);

	if (FUNC11(rt2x00dev, RT5392))
		FUNC3(rt2x00dev, 88, 0x90);

	FUNC3(rt2x00dev, 91, 0x04);

	FUNC3(rt2x00dev, 92, 0x02);

	if (FUNC11(rt2x00dev, RT5392)) {
		FUNC3(rt2x00dev, 95, 0x9a);
		FUNC3(rt2x00dev, 98, 0x12);
	}

	FUNC3(rt2x00dev, 103, 0xc0);

	FUNC3(rt2x00dev, 104, 0x92);

	FUNC3(rt2x00dev, 105, 0x3c);

	if (FUNC11(rt2x00dev, RT5390))
		FUNC3(rt2x00dev, 106, 0x03);
	else if (FUNC11(rt2x00dev, RT5392))
		FUNC3(rt2x00dev, 106, 0x12);
	else
		FUNC0(1);

	FUNC3(rt2x00dev, 128, 0x12);

	if (FUNC11(rt2x00dev, RT5392)) {
		FUNC3(rt2x00dev, 134, 0xd0);
		FUNC3(rt2x00dev, 135, 0xf6);
	}

	FUNC4(rt2x00dev);

	eeprom = FUNC5(rt2x00dev, EEPROM_NIC_CONF1);
	div_mode = FUNC9(eeprom,
				      EEPROM_NIC_CONF1_ANT_DIVERSITY);
	ant = (div_mode == 3) ? 1 : 0;

	/* check if this is a Bluetooth combo card */
	if (FUNC10(rt2x00dev)) {
		u32 reg;

		reg = FUNC7(rt2x00dev, GPIO_CTRL);
		FUNC13(&reg, GPIO_CTRL_DIR3, 0);
		FUNC13(&reg, GPIO_CTRL_DIR6, 0);
		FUNC13(&reg, GPIO_CTRL_VAL3, 0);
		FUNC13(&reg, GPIO_CTRL_VAL6, 0);
		if (ant == 0)
			FUNC13(&reg, GPIO_CTRL_VAL3, 1);
		else if (ant == 1)
			FUNC13(&reg, GPIO_CTRL_VAL6, 1);
		FUNC8(rt2x00dev, GPIO_CTRL, reg);
	}

	/* These chips have hardware RX antenna diversity */
	if (FUNC12(rt2x00dev, RT5390, REV_RT5390R) ||
	    FUNC12(rt2x00dev, RT5390, REV_RT5370G)) {
		FUNC3(rt2x00dev, 150, 0); /* Disable Antenna Software OFDM */
		FUNC3(rt2x00dev, 151, 0); /* Disable Antenna Software CCK */
		FUNC3(rt2x00dev, 154, 0); /* Clear previously selected antenna */
	}

	value = FUNC2(rt2x00dev, 152);
	if (ant == 0)
		FUNC14(&value, BBP152_RX_DEFAULT_ANT, 1);
	else
		FUNC14(&value, BBP152_RX_DEFAULT_ANT, 0);
	FUNC3(rt2x00dev, 152, value);

	FUNC6(rt2x00dev);
}