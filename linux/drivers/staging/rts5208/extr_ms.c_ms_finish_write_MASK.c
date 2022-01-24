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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct ms_info {scalar_t__ page_off; } ;
struct rtsx_chip {struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ms_info*) ; 
 scalar_t__ FUNC1 (struct ms_info*) ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC2 (struct rtsx_chip*,int,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int) ; 
 int* ms_start_idx ; 

__attribute__((used)) static int FUNC7(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
			   u16 log_blk, u8 page_off)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval, seg_no;

	retval = FUNC2(chip, old_blk, new_blk, log_blk,
			      page_off, ms_card->page_off + 1);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	seg_no = old_blk >> 9;

	if (FUNC1(ms_card)) {
		FUNC0(ms_card);
		FUNC4(chip, old_blk);
	} else {
		retval = FUNC3(chip, old_blk);
		if (retval == STATUS_SUCCESS)
			FUNC6(chip, old_blk);
	}

	FUNC5(chip, seg_no, log_blk - ms_start_idx[seg_no], new_blk);

	return STATUS_SUCCESS;
}