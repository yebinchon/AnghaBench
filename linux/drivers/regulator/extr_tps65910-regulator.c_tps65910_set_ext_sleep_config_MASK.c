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
struct tps65910_reg {int* ext_sleep_control; int* board_ext_control; int (* get_ctrl_reg ) (int) ;struct tps65910* mfd; } ;
struct tps65910 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EXT_SLEEP_CONTROL ; 
 scalar_t__ TPS65910 ; 
 int TPS65910_EN1_LDO_ASS ; 
 int TPS65910_EN2_LDO_ASS ; 
 int TPS65910_EN3_LDO_ASS ; 
 int TPS65910_REG_VDD1 ; 
 int TPS65910_REG_VDD2 ; 
 int TPS65910_REG_VDIG1 ; 
 int TPS65910_SLEEP_CONTROL_EXT_INPUT_EN1 ; 
 int TPS65910_SLEEP_CONTROL_EXT_INPUT_EN2 ; 
 int TPS65910_SLEEP_CONTROL_EXT_INPUT_EN3 ; 
 int TPS65910_SLEEP_KEEP_LDO_ON ; 
 int TPS65910_SLEEP_SET_LDO_OFF ; 
 scalar_t__ TPS65911 ; 
 int TPS65911_REG_VDDCTRL ; 
 int TPS65911_SLEEP_CONTROL_EXT_INPUT_SLEEP ; 
 int VDD1_OP_CMD_MASK ; 
 int VDD1_OP_SEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct tps65910*) ; 
 int FUNC4 (struct tps65910*,int,int) ; 
 int FUNC5 (struct tps65910*,int,int*) ; 
 int FUNC6 (struct tps65910*,int,int) ; 
 int FUNC7 (struct tps65910*,int,int) ; 

__attribute__((used)) static int FUNC8(struct tps65910_reg *pmic,
		int id, int ext_sleep_config)
{
	struct tps65910 *mfd = pmic->mfd;
	u8 regoffs = (pmic->ext_sleep_control[id] >> 8) & 0xFF;
	u8 bit_pos = (1 << pmic->ext_sleep_control[id] & 0xFF);
	int ret;

	/*
	 * Regulator can not be control from multiple external input EN1, EN2
	 * and EN3 together.
	 */
	if (ext_sleep_config & EXT_SLEEP_CONTROL) {
		int en_count;
		en_count = ((ext_sleep_config &
				TPS65910_SLEEP_CONTROL_EXT_INPUT_EN1) != 0);
		en_count += ((ext_sleep_config &
				TPS65910_SLEEP_CONTROL_EXT_INPUT_EN2) != 0);
		en_count += ((ext_sleep_config &
				TPS65910_SLEEP_CONTROL_EXT_INPUT_EN3) != 0);
		en_count += ((ext_sleep_config &
				TPS65911_SLEEP_CONTROL_EXT_INPUT_SLEEP) != 0);
		if (en_count > 1) {
			FUNC0(mfd->dev,
				"External sleep control flag is not proper\n");
			return -EINVAL;
		}
	}

	pmic->board_ext_control[id] = ext_sleep_config;

	/* External EN1 control */
	if (ext_sleep_config & TPS65910_SLEEP_CONTROL_EXT_INPUT_EN1)
		ret = FUNC6(mfd,
				TPS65910_EN1_LDO_ASS + regoffs, bit_pos);
	else
		ret = FUNC4(mfd,
				TPS65910_EN1_LDO_ASS + regoffs, bit_pos);
	if (ret < 0) {
		FUNC0(mfd->dev,
			"Error in configuring external control EN1\n");
		return ret;
	}

	/* External EN2 control */
	if (ext_sleep_config & TPS65910_SLEEP_CONTROL_EXT_INPUT_EN2)
		ret = FUNC6(mfd,
				TPS65910_EN2_LDO_ASS + regoffs, bit_pos);
	else
		ret = FUNC4(mfd,
				TPS65910_EN2_LDO_ASS + regoffs, bit_pos);
	if (ret < 0) {
		FUNC0(mfd->dev,
			"Error in configuring external control EN2\n");
		return ret;
	}

	/* External EN3 control for TPS65910 LDO only */
	if ((FUNC3(mfd) == TPS65910) &&
			(id >= TPS65910_REG_VDIG1)) {
		if (ext_sleep_config & TPS65910_SLEEP_CONTROL_EXT_INPUT_EN3)
			ret = FUNC6(mfd,
				TPS65910_EN3_LDO_ASS + regoffs, bit_pos);
		else
			ret = FUNC4(mfd,
				TPS65910_EN3_LDO_ASS + regoffs, bit_pos);
		if (ret < 0) {
			FUNC0(mfd->dev,
				"Error in configuring external control EN3\n");
			return ret;
		}
	}

	/* Return if no external control is selected */
	if (!(ext_sleep_config & EXT_SLEEP_CONTROL)) {
		/* Clear all sleep controls */
		ret = FUNC4(mfd,
			TPS65910_SLEEP_KEEP_LDO_ON + regoffs, bit_pos);
		if (!ret)
			ret = FUNC4(mfd,
				TPS65910_SLEEP_SET_LDO_OFF + regoffs, bit_pos);
		if (ret < 0)
			FUNC0(mfd->dev,
				"Error in configuring SLEEP register\n");
		return ret;
	}

	/*
	 * For regulator that has separate operational and sleep register make
	 * sure that operational is used and clear sleep register to turn
	 * regulator off when external control is inactive
	 */
	if ((id == TPS65910_REG_VDD1) ||
		(id == TPS65910_REG_VDD2) ||
			((id == TPS65911_REG_VDDCTRL) &&
				(FUNC3(mfd) == TPS65911))) {
		int op_reg_add = pmic->get_ctrl_reg(id) + 1;
		int sr_reg_add = pmic->get_ctrl_reg(id) + 2;
		int opvsel, srvsel;

		ret = FUNC5(pmic->mfd, op_reg_add, &opvsel);
		if (ret < 0)
			return ret;
		ret = FUNC5(pmic->mfd, sr_reg_add, &srvsel);
		if (ret < 0)
			return ret;

		if (opvsel & VDD1_OP_CMD_MASK) {
			u8 reg_val = srvsel & VDD1_OP_SEL_MASK;

			ret = FUNC7(pmic->mfd, op_reg_add,
						 reg_val);
			if (ret < 0) {
				FUNC0(mfd->dev,
					"Error in configuring op register\n");
				return ret;
			}
		}
		ret = FUNC7(pmic->mfd, sr_reg_add, 0);
		if (ret < 0) {
			FUNC0(mfd->dev, "Error in setting sr register\n");
			return ret;
		}
	}

	ret = FUNC4(mfd,
			TPS65910_SLEEP_KEEP_LDO_ON + regoffs, bit_pos);
	if (!ret) {
		if (ext_sleep_config & TPS65911_SLEEP_CONTROL_EXT_INPUT_SLEEP)
			ret = FUNC6(mfd,
				TPS65910_SLEEP_SET_LDO_OFF + regoffs, bit_pos);
		else
			ret = FUNC4(mfd,
				TPS65910_SLEEP_SET_LDO_OFF + regoffs, bit_pos);
	}
	if (ret < 0)
		FUNC0(mfd->dev,
			"Error in configuring SLEEP register\n");

	return ret;
}