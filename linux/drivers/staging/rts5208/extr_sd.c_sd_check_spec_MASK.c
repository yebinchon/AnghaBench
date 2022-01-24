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
struct sd_info {int /*<<< orphan*/  raw_scr; int /*<<< orphan*/  sd_addr; } ;
struct rtsx_chip {struct sd_info sd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  APP_CMD ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1 ; 
 int /*<<< orphan*/  SD_TM_NORMAL_READ ; 
 int SEND_SCR ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int*,int,int,int,int,int*,int,int) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rtsx_chip *chip, u8 bus_width)
{
	struct sd_info *sd_card = &chip->sd_card;
	int retval;
	u8 cmd[5], buf[8];

	retval = FUNC3(chip, APP_CMD, sd_card->sd_addr,
				     SD_RSP_TYPE_R1, NULL, 0);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	cmd[0] = 0x40 | SEND_SCR;
	cmd[1] = 0;
	cmd[2] = 0;
	cmd[3] = 0;
	cmd[4] = 0;

	retval = FUNC2(chip, SD_TM_NORMAL_READ, cmd, 5, 8, 1, bus_width,
			      buf, 8, 250);
	if (retval != STATUS_SUCCESS) {
		FUNC1(chip);
		return STATUS_FAIL;
	}

	FUNC0(sd_card->raw_scr, buf, 8);

	if ((buf[0] & 0x0F) == 0)
		return STATUS_FAIL;

	return STATUS_SUCCESS;
}