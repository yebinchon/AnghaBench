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
struct sd_info {int /*<<< orphan*/  sd_addr; } ;
struct rtsx_chip {struct sd_info sd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  APP_CMD ; 
 int /*<<< orphan*/  SD_BUS_WIDTH_4 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1 ; 
 int SD_STATUS ; 
 int /*<<< orphan*/  SD_TM_NORMAL_READ ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  TUNE_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*) ; 

__attribute__((used)) static int FUNC7(struct rtsx_chip *chip, u8 sample_point)
{
	struct sd_info *sd_card = &chip->sd_card;
	int retval;
	u8 cmd[5];

	retval = FUNC3(chip, sample_point, TUNE_RX);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC0(FUNC2(chip), "sd ddr tuning rx\n");

	retval = FUNC5(chip, APP_CMD, sd_card->sd_addr,
				     SD_RSP_TYPE_R1, NULL, 0);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	cmd[0] = 0x40 | SD_STATUS;
	cmd[1] = 0;
	cmd[2] = 0;
	cmd[3] = 0;
	cmd[4] = 0;

	retval = FUNC4(chip, SD_TM_NORMAL_READ, cmd, 5, 64, 1,
			      SD_BUS_WIDTH_4, NULL, 0, 100);
	if (retval != STATUS_SUCCESS) {
		(void)FUNC6(chip);

		FUNC1(chip);
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}