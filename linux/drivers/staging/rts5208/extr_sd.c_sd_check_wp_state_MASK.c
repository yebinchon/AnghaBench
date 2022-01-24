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
typedef  int u16 ;
struct sd_info {int /*<<< orphan*/  sd_addr; } ;
struct rtsx_chip {int /*<<< orphan*/  card_wp; struct sd_info sd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  APP_CMD ; 
 int /*<<< orphan*/  RTSX_BIPR ; 
 int /*<<< orphan*/  SD_BUS_WIDTH_4 ; 
 int /*<<< orphan*/  SD_CARD ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1 ; 
 int SD_STATUS ; 
 int /*<<< orphan*/  SD_TM_NORMAL_READ ; 
 int SD_WRITE_PROTECT ; 
 int /*<<< orphan*/  SEND_STATUS ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int*,int,int,int,int /*<<< orphan*/ ,int*,int,int) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;
	int retval;
	u32 val;
	u16 sd_card_type;
	u8 cmd[5], buf[64];

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
			      SD_BUS_WIDTH_4, buf, 64, 250);
	if (retval != STATUS_SUCCESS) {
		FUNC1(chip);

		FUNC5(chip, SEND_STATUS, sd_card->sd_addr,
				    SD_RSP_TYPE_R1, NULL, 0);
		return STATUS_FAIL;
	}

	FUNC0(FUNC2(chip), "ACMD13:\n");
	FUNC0(FUNC2(chip), "%*ph\n", 64, buf);

	sd_card_type = ((u16)buf[2] << 8) | buf[3];
	FUNC0(FUNC2(chip), "sd_card_type = 0x%04x\n", sd_card_type);
	if ((sd_card_type == 0x0001) || (sd_card_type == 0x0002)) {
		/* ROM card or OTP */
		chip->card_wp |= SD_CARD;
	}

	/* Check SD Machanical Write-Protect Switch */
	val = FUNC3(chip, RTSX_BIPR);
	if (val & SD_WRITE_PROTECT)
		chip->card_wp |= SD_CARD;

	return STATUS_SUCCESS;
}