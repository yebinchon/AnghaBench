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
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ delay_write_flag; } ;
struct ms_info {scalar_t__ pro_under_formatting; TYPE_1__ delay_write; scalar_t__ switch_8bit_fail; scalar_t__ check_ms_flow; scalar_t__ ms_type; } ;
struct rtsx_chip {int ocp_stat; scalar_t__ asic_code; int /*<<< orphan*/  ft2_fast_mode; struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_OE ; 
 int /*<<< orphan*/  CARD_STOP ; 
 scalar_t__ FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FPGA_MS_PULL_CTL_BIT ; 
 int /*<<< orphan*/  FPGA_PULL_CTL ; 
 int MS_BUS_WIDTH_1 ; 
 int /*<<< orphan*/  MS_CARD ; 
 int /*<<< orphan*/  MS_CFG ; 
 int MS_CLR_ERR ; 
 int MS_OC_EVER ; 
 int MS_OC_NOW ; 
 int MS_OUTPUT_EN ; 
 int MS_STOP ; 
 int /*<<< orphan*/  MS_TRANS_CFG ; 
 int NO_AUTO_READ_INT_REG ; 
 int NO_EXTEND_TOGGLE ; 
 int NO_WAIT_INT ; 
 int PUSH_TIME_DEFAULT ; 
 int SAMPLE_TIME_FALLING ; 
 int SAMPLE_TIME_RISING ; 
 int /*<<< orphan*/  SD_MS_2LUN ; 
 int SD_OC_EVER ; 
 int SD_OC_NOW ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtsx_chip*) ; 
 int FUNC5 (struct rtsx_chip*) ; 
 int FUNC6 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*) ; 
 int FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval;
	u8 oc_mask = 0;

	ms_card->ms_type = 0;
	ms_card->check_ms_flow = 0;
	ms_card->switch_8bit_fail = 0;
	ms_card->delay_write.delay_write_flag = 0;

	ms_card->pro_under_formatting = 0;

	retval = FUNC4(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (!chip->ft2_fast_mode)
		FUNC9(250);

	retval = FUNC3(chip, MS_CARD);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (chip->asic_code) {
		retval = FUNC5(chip);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	} else {
		retval = FUNC8(chip, FPGA_PULL_CTL,
					     FPGA_MS_PULL_CTL_BIT | 0x20, 0);
		if (retval)
			return retval;
	}

	if (!chip->ft2_fast_mode) {
		retval = FUNC1(chip, MS_CARD);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		FUNC9(150);

#ifdef SUPPORT_OCP
		if (CHECK_LUN_MODE(chip, SD_MS_2LUN))
			oc_mask = MS_OC_NOW | MS_OC_EVER;
		else
			oc_mask = SD_OC_NOW | SD_OC_EVER;

		if (chip->ocp_stat & oc_mask) {
			dev_dbg(rtsx_dev(chip), "Over current, OCPSTAT is 0x%x\n",
				chip->ocp_stat);
			return STATUS_FAIL;
		}
#endif
	}

	retval = FUNC8(chip, CARD_OE, MS_OUTPUT_EN,
				     MS_OUTPUT_EN);
	if (retval)
		return retval;

	if (chip->asic_code) {
		retval = FUNC8(chip, MS_CFG, 0xFF,
					     SAMPLE_TIME_RISING |
					     PUSH_TIME_DEFAULT |
					     NO_EXTEND_TOGGLE |
					     MS_BUS_WIDTH_1);
		if (retval)
			return retval;

	} else {
		retval = FUNC8(chip, MS_CFG, 0xFF,
					     SAMPLE_TIME_FALLING |
					     PUSH_TIME_DEFAULT |
					     NO_EXTEND_TOGGLE |
					     MS_BUS_WIDTH_1);
		if (retval)
			return retval;
	}
	retval = FUNC8(chip, MS_TRANS_CFG, 0xFF,
				     NO_WAIT_INT | NO_AUTO_READ_INT_REG);
	if (retval)
		return retval;

	retval = FUNC8(chip, CARD_STOP, MS_STOP | MS_CLR_ERR,
				     MS_STOP | MS_CLR_ERR);
	if (retval)
		return retval;

	retval = FUNC6(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	return STATUS_SUCCESS;
}