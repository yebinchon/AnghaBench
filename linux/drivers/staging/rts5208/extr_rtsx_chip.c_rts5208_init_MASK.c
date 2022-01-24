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
typedef  int u16 ;
struct rtsx_chip {int asic_code; int ic_version; int phy_debug_mode; int aux_pwr_exist; int hw_bypass_sd; int auto_delink_en; scalar_t__ use_hw_setting; } ;

/* Variables and functions */
 int AUX_PWR_DETECTED ; 
 int CHANGE_LINK_STATE ; 
 int CLK_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*) ; 
 int PDINFO ; 
 int PHY_DEBUG_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int,int*) ; 
 int FUNC5 (struct rtsx_chip*,int,int*) ; 
 int FUNC6 (struct rtsx_chip*,int,int*) ; 
 int FUNC7 (struct rtsx_chip*,int,int,int) ; 

__attribute__((used)) static int FUNC8(struct rtsx_chip *chip)
{
	int retval;
	u16 reg = 0;
	u8 val = 0;

	retval = FUNC7(chip, CLK_SEL, 0x03, 0x03);
	if (retval)
		return retval;
	retval = FUNC6(chip, CLK_SEL, &val);
	if (retval)
		return retval;
	chip->asic_code = val == 0 ? 1 : 0;

	if (chip->asic_code) {
		retval = FUNC5(chip, 0x1C, &reg);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		FUNC2(FUNC3(chip), "Value of phy register 0x1C is 0x%x\n",
			reg);
		chip->ic_version = (reg >> 4) & 0x07;
		chip->phy_debug_mode = reg & PHY_DEBUG_MODE ? 1 : 0;

	} else {
		retval = FUNC6(chip, 0xFE80, &val);
		if (retval)
			return retval;
		chip->ic_version = val;
		chip->phy_debug_mode = 0;
	}

	retval = FUNC6(chip, PDINFO, &val);
	if (retval)
		return retval;
	FUNC2(FUNC3(chip), "PDINFO: 0x%x\n", val);
	chip->aux_pwr_exist = val & AUX_PWR_DETECTED ? 1 : 0;

	retval = FUNC6(chip, 0xFE50, &val);
	if (retval)
		return retval;
	chip->hw_bypass_sd = val & 0x01 ? 1 : 0;

	FUNC4(chip, 0x0E, &val);
	if (val & 0x80)
		FUNC1(chip);
	else
		FUNC0(chip);

	if (chip->use_hw_setting) {
		retval = FUNC6(chip, CHANGE_LINK_STATE, &val);
		if (retval)
			return retval;
		chip->auto_delink_en = val & 0x80 ? 1 : 0;
	}

	return STATUS_SUCCESS;
}