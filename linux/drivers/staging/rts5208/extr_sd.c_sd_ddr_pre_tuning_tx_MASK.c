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
struct sd_info {int /*<<< orphan*/  sd_addr; } ;
struct rtsx_chip {struct sd_info sd_card; } ;

/* Variables and functions */
 int MAX_PHASE ; 
 int /*<<< orphan*/  SD_CARD ; 
 int /*<<< orphan*/  SD_CFG3 ; 
 int /*<<< orphan*/  SD_NO_CARD ; 
 int /*<<< orphan*/  SD_RSP_80CLK_TIMEOUT_EN ; 
 int /*<<< orphan*/  SD_RSP_TIMEOUT ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1 ; 
 int /*<<< orphan*/  SEND_STATUS ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  TUNE_TX ; 
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;
	int retval;
	int i;
	u32 phase_map;
	u8 final_phase;

	retval = FUNC3(chip, SD_CFG3, SD_RSP_80CLK_TIMEOUT_EN,
				     SD_RSP_80CLK_TIMEOUT_EN);
	if (retval)
		return retval;

	phase_map = 0;
	for (i = MAX_PHASE; i >= 0; i--) {
		if (FUNC0(chip, SD_CARD) != STATUS_SUCCESS) {
			FUNC8(chip, SD_NO_CARD);
			FUNC3(chip, SD_CFG3,
					    SD_RSP_80CLK_TIMEOUT_EN, 0);
			return STATUS_FAIL;
		}

		retval = FUNC4(chip, (u8)i, TUNE_TX);
		if (retval != STATUS_SUCCESS)
			continue;

		retval = FUNC7(chip, SEND_STATUS,
					     sd_card->sd_addr, SD_RSP_TYPE_R1,
					     NULL, 0);
		if ((retval == STATUS_SUCCESS) ||
		    !FUNC5(chip, SD_RSP_TIMEOUT))
			phase_map |= 1 << i;
	}

	retval = FUNC3(chip, SD_CFG3, SD_RSP_80CLK_TIMEOUT_EN,
				     0);
	if (retval)
		return retval;

	FUNC1(FUNC2(chip), "DDR TX pre tune phase_map = 0x%08x\n",
		phase_map);

	final_phase = FUNC6(chip, phase_map, TUNE_TX);
	if (final_phase == 0xFF)
		return STATUS_FAIL;

	retval = FUNC4(chip, final_phase, TUNE_TX);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC1(FUNC2(chip), "DDR TX pre tune phase: %d\n",
		(int)final_phase);

	return STATUS_SUCCESS;
}