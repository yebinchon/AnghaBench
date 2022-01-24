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
struct sd_info {int /*<<< orphan*/  sd_lock_status; int /*<<< orphan*/  sd_addr; } ;
struct rtsx_chip {struct sd_info sd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_LOCKED ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1 ; 
 int /*<<< orphan*/  SEND_STATUS ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;
	int retval;
	u8 rsp[5];

	retval = FUNC2(chip, SEND_STATUS, sd_card->sd_addr,
				     SD_RSP_TYPE_R1, rsp, 5);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (rsp[1] & 0x02)
		sd_card->sd_lock_status |= SD_LOCKED;
	else
		sd_card->sd_lock_status &= ~SD_LOCKED;

	FUNC0(FUNC1(chip), "sd_card->sd_lock_status = 0x%x\n",
		sd_card->sd_lock_status);

	if (rsp[1] & 0x01)
		return STATUS_FAIL;

	return STATUS_SUCCESS;
}