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
 int /*<<< orphan*/  EEPROM_NIC_CONF1 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_DAC_TEST ; 
 int /*<<< orphan*/  GPIO_SWITCH ; 
 int /*<<< orphan*/  GPIO_SWITCH_5 ; 
 int /*<<< orphan*/  LDO_CFG0 ; 
 int /*<<< orphan*/  LDO_CFG0_BGSEL ; 
 int /*<<< orphan*/  LDO_CFG0_LDO_CORE_VLEVEL ; 
 int /*<<< orphan*/  REV_RT3070F ; 
 int /*<<< orphan*/  REV_RT3071E ; 
 int /*<<< orphan*/  REV_RT3090E ; 
 int /*<<< orphan*/  RFCSR6_R2 ; 
 int /*<<< orphan*/  RT3070 ; 
 int /*<<< orphan*/  RT3071 ; 
 int /*<<< orphan*/  RT3090 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int) ; 
 int FUNC6 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC14(struct rt2x00_dev *rt2x00dev)
{
	u8 rfcsr;
	u16 eeprom;
	u32 reg;

	/* XXX vendor driver do this only for 3070 */
	FUNC5(rt2x00dev, 30);

	FUNC7(rt2x00dev, 4, 0x40);
	FUNC7(rt2x00dev, 5, 0x03);
	FUNC7(rt2x00dev, 6, 0x02);
	FUNC7(rt2x00dev, 7, 0x60);
	FUNC7(rt2x00dev, 9, 0x0f);
	FUNC7(rt2x00dev, 10, 0x41);
	FUNC7(rt2x00dev, 11, 0x21);
	FUNC7(rt2x00dev, 12, 0x7b);
	FUNC7(rt2x00dev, 14, 0x90);
	FUNC7(rt2x00dev, 15, 0x58);
	FUNC7(rt2x00dev, 16, 0xb3);
	FUNC7(rt2x00dev, 17, 0x92);
	FUNC7(rt2x00dev, 18, 0x2c);
	FUNC7(rt2x00dev, 19, 0x02);
	FUNC7(rt2x00dev, 20, 0xba);
	FUNC7(rt2x00dev, 21, 0xdb);
	FUNC7(rt2x00dev, 24, 0x16);
	FUNC7(rt2x00dev, 25, 0x03);
	FUNC7(rt2x00dev, 29, 0x1f);

	if (FUNC11(rt2x00dev, RT3070, REV_RT3070F)) {
		reg = FUNC3(rt2x00dev, LDO_CFG0);
		FUNC12(&reg, LDO_CFG0_BGSEL, 1);
		FUNC12(&reg, LDO_CFG0_LDO_CORE_VLEVEL, 3);
		FUNC4(rt2x00dev, LDO_CFG0, reg);
	} else if (FUNC10(rt2x00dev, RT3071) ||
		   FUNC10(rt2x00dev, RT3090)) {
		FUNC7(rt2x00dev, 31, 0x14);

		rfcsr = FUNC6(rt2x00dev, 6);
		FUNC13(&rfcsr, RFCSR6_R2, 1);
		FUNC7(rt2x00dev, 6, rfcsr);

		reg = FUNC3(rt2x00dev, LDO_CFG0);
		FUNC12(&reg, LDO_CFG0_BGSEL, 1);
		if (FUNC11(rt2x00dev, RT3071, REV_RT3071E) ||
		    FUNC11(rt2x00dev, RT3090, REV_RT3090E)) {
			eeprom = FUNC0(rt2x00dev, EEPROM_NIC_CONF1);
			if (FUNC9(eeprom, EEPROM_NIC_CONF1_DAC_TEST))
				FUNC12(&reg, LDO_CFG0_LDO_CORE_VLEVEL, 3);
			else
				FUNC12(&reg, LDO_CFG0_LDO_CORE_VLEVEL, 0);
		}
		FUNC4(rt2x00dev, LDO_CFG0, reg);

		reg = FUNC3(rt2x00dev, GPIO_SWITCH);
		FUNC12(&reg, GPIO_SWITCH_5, 0);
		FUNC4(rt2x00dev, GPIO_SWITCH, reg);
	}

	FUNC8(rt2x00dev);

	if (FUNC11(rt2x00dev, RT3070, REV_RT3070F) ||
	    FUNC11(rt2x00dev, RT3071, REV_RT3071E) ||
	    FUNC11(rt2x00dev, RT3090, REV_RT3090E))
		FUNC7(rt2x00dev, 27, 0x03);

	FUNC1(rt2x00dev);
	FUNC2(rt2x00dev);
}