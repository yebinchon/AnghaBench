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
struct TYPE_2__ {scalar_t__ delay_write_flag; } ;
struct xd_info {int cis_block; TYPE_1__ delay_write; scalar_t__ zone_cnt; scalar_t__ capacity; scalar_t__ addr_cycle; scalar_t__ page_off; scalar_t__ block_shift; } ;
struct rtsx_chip {struct xd_info xd_card; } ;

/* Variables and functions */
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  XD_CARD ; 
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xd_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*) ; 

int FUNC4(struct rtsx_chip *chip)
{
	struct xd_info *xd_card = &chip->xd_card;
	int retval;

	FUNC1(xd_card, 0, sizeof(struct xd_info));

	xd_card->block_shift = 0;
	xd_card->page_off = 0;
	xd_card->addr_cycle = 0;
	xd_card->capacity = 0;
	xd_card->zone_cnt = 0;
	xd_card->cis_block = 0xFFFF;
	xd_card->delay_write.delay_write_flag = 0;

	retval = FUNC0(chip, XD_CARD);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC2(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC3(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	return STATUS_SUCCESS;
}