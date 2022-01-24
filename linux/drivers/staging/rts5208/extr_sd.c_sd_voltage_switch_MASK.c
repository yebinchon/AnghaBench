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
struct rtsx_chip {int /*<<< orphan*/  sd_voltage_switch_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_CLK_EN ; 
 int /*<<< orphan*/  SD_BUS_STAT ; 
 int SD_CLK_FORCE_STOP ; 
 int SD_CLK_TOGGLE_EN ; 
 int SD_CMD_STATUS ; 
 int SD_DAT0_STATUS ; 
 int SD_DAT1_STATUS ; 
 int SD_DAT2_STATUS ; 
 int SD_DAT3_STATUS ; 
 int /*<<< orphan*/  SD_IO_1V8 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1 ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  VOLTAGE_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct rtsx_chip *chip)
{
	int retval;
	u8 stat;

	retval = FUNC3(chip, SD_BUS_STAT,
				     SD_CLK_TOGGLE_EN | SD_CLK_FORCE_STOP,
				     SD_CLK_TOGGLE_EN);
	if (retval)
		return retval;

	retval = FUNC5(chip, VOLTAGE_SWITCH, 0, SD_RSP_TYPE_R1,
				     NULL, 0);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC6(chip->sd_voltage_switch_delay);

	retval = FUNC2(chip, SD_BUS_STAT, &stat);
	if (retval)
		return retval;
	if (stat & (SD_CMD_STATUS | SD_DAT3_STATUS | SD_DAT2_STATUS |
				SD_DAT1_STATUS | SD_DAT0_STATUS)) {
		return STATUS_FAIL;
	}

	retval = FUNC3(chip, SD_BUS_STAT, 0xFF,
				     SD_CLK_FORCE_STOP);
	if (retval)
		return retval;
	retval = FUNC4(chip, SD_IO_1V8);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC7(50);

	retval = FUNC3(chip, SD_BUS_STAT, 0xFF,
				     SD_CLK_TOGGLE_EN);
	if (retval)
		return retval;
	FUNC7(10);

	retval = FUNC2(chip, SD_BUS_STAT, &stat);
	if (retval)
		return retval;
	if ((stat & (SD_CMD_STATUS | SD_DAT3_STATUS | SD_DAT2_STATUS |
				SD_DAT1_STATUS | SD_DAT0_STATUS)) !=
			(SD_CMD_STATUS | SD_DAT3_STATUS | SD_DAT2_STATUS |
				SD_DAT1_STATUS | SD_DAT0_STATUS)) {
		FUNC0(FUNC1(chip), "SD_BUS_STAT: 0x%x\n", stat);
		FUNC3(chip, SD_BUS_STAT, SD_CLK_TOGGLE_EN |
				    SD_CLK_FORCE_STOP, 0);
		FUNC3(chip, CARD_CLK_EN, 0xFF, 0);
		return STATUS_FAIL;
	}

	retval = FUNC3(chip, SD_BUS_STAT,
				     SD_CLK_TOGGLE_EN | SD_CLK_FORCE_STOP, 0);
	if (retval)
		return retval;

	return STATUS_SUCCESS;
}