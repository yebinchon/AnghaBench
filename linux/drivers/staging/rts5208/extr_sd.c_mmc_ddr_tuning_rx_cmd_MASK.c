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
struct sd_info {int dummy; } ;
struct rtsx_chip {struct sd_info sd_card; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sd_info*) ; 
 scalar_t__ FUNC1 (struct sd_info*) ; 
 int SD_BUS_WIDTH_1 ; 
 int SD_BUS_WIDTH_4 ; 
 int SD_BUS_WIDTH_8 ; 
 int /*<<< orphan*/  SD_TM_NORMAL_READ ; 
 int SEND_EXT_CSD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  TUNE_RX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int FUNC5 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int*,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*) ; 

__attribute__((used)) static int FUNC8(struct rtsx_chip *chip, u8 sample_point)
{
	struct sd_info *sd_card = &chip->sd_card;
	int retval;
	u8 cmd[5], bus_width;

	if (FUNC1(sd_card))
		bus_width = SD_BUS_WIDTH_8;
	else if (FUNC0(sd_card))
		bus_width = SD_BUS_WIDTH_4;
	else
		bus_width = SD_BUS_WIDTH_1;

	retval = FUNC5(chip, sample_point, TUNE_RX);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC2(FUNC4(chip), "mmc ddr tuning rx\n");

	cmd[0] = 0x40 | SEND_EXT_CSD;
	cmd[1] = 0;
	cmd[2] = 0;
	cmd[3] = 0;
	cmd[4] = 0;

	retval = FUNC6(chip, SD_TM_NORMAL_READ, cmd, 5, 0x200, 1,
			      bus_width, NULL, 0, 100);
	if (retval != STATUS_SUCCESS) {
		(void)FUNC7(chip);

		FUNC3(chip);
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}