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
struct sd_info {int dummy; } ;
struct rtsx_chip {struct sd_info sd_card; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sd_info*) ; 
 scalar_t__ FUNC1 (struct sd_info*) ; 
 scalar_t__ FUNC2 (struct sd_info*) ; 
 int MAX_PHASE ; 
 int /*<<< orphan*/  SD_CARD ; 
 int /*<<< orphan*/  SD_NO_CARD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  TUNE_RX ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC5 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct rtsx_chip*,int) ; 
 int FUNC9 (struct rtsx_chip*,int) ; 
 int FUNC10 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;
	int retval;
	int i, j;
	u32 raw_phase_map[3], phase_map;
	u8 final_phase;
	int (*tuning_cmd)(struct rtsx_chip *chip, u8 sample_point);

	if (FUNC1(sd_card)) {
		if (FUNC2(sd_card))
			tuning_cmd = sd_ddr_tuning_rx_cmd;
		else
			tuning_cmd = sd_sdr_tuning_rx_cmd;

	} else {
		if (FUNC0(sd_card))
			tuning_cmd = mmc_ddr_tuning_rx_cmd;
		else
			return STATUS_FAIL;
	}

	for (i = 0; i < 3; i++) {
		raw_phase_map[i] = 0;
		for (j = MAX_PHASE; j >= 0; j--) {
			if (FUNC3(chip, SD_CARD) != STATUS_SUCCESS) {
				FUNC11(chip, SD_NO_CARD);
				return STATUS_FAIL;
			}

			retval = tuning_cmd(chip, (u8)j);
			if (retval == STATUS_SUCCESS)
				raw_phase_map[i] |= 1 << j;
		}
	}

	phase_map = raw_phase_map[0] & raw_phase_map[1] & raw_phase_map[2];
	for (i = 0; i < 3; i++)
		FUNC4(FUNC6(chip), "RX raw_phase_map[%d] = 0x%08x\n",
			i, raw_phase_map[i]);

	FUNC4(FUNC6(chip), "RX phase_map = 0x%08x\n", phase_map);

	final_phase = FUNC10(chip, phase_map, TUNE_RX);
	if (final_phase == 0xFF)
		return STATUS_FAIL;

	retval = FUNC7(chip, final_phase, TUNE_RX);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	return STATUS_SUCCESS;
}