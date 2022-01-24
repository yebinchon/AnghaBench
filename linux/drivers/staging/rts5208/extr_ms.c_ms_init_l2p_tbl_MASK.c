#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct zone_entry {int dummy; } ;
struct ms_info {int segment_cnt; int total_block; TYPE_1__* segment; int /*<<< orphan*/  boot_block; } ;
struct rtsx_chip {struct ms_info ms_card; } ;
struct TYPE_3__ {int* defect_list; int /*<<< orphan*/  disable_count; scalar_t__ unused_blk_cnt; scalar_t__ set_index; scalar_t__ get_index; int /*<<< orphan*/ * free_table; int /*<<< orphan*/ * l2p_table; scalar_t__ build_flag; } ;

/* Variables and functions */
 int PPBUF_BASE2 ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;
	int size, i, seg_no, retval;
	u16 defect_block, reg_addr;
	u8 val1, val2;

	ms_card->segment_cnt = ms_card->total_block >> 9;
	FUNC0(FUNC2(chip), "ms_card->segment_cnt = %d\n",
		ms_card->segment_cnt);

	size = ms_card->segment_cnt * sizeof(struct zone_entry);
	ms_card->segment = FUNC5(size);
	if (!ms_card->segment)
		return STATUS_FAIL;

	retval = FUNC1(chip, ms_card->boot_block, 1);
	if (retval != STATUS_SUCCESS)
		goto INIT_FAIL;

	reg_addr = PPBUF_BASE2;
	for (i = 0; i < (((ms_card->total_block >> 9) * 10) + 1); i++) {
		int block_no;

		retval = FUNC3(chip, reg_addr++, &val1);
		if (retval != STATUS_SUCCESS)
			goto INIT_FAIL;

		retval = FUNC3(chip, reg_addr++, &val2);
		if (retval != STATUS_SUCCESS)
			goto INIT_FAIL;

		defect_block = ((u16)val1 << 8) | val2;
		if (defect_block == 0xFFFF)
			break;

		seg_no = defect_block / 512;

		block_no = ms_card->segment[seg_no].disable_count++;
		ms_card->segment[seg_no].defect_list[block_no] = defect_block;
	}

	for (i = 0; i < ms_card->segment_cnt; i++) {
		ms_card->segment[i].build_flag = 0;
		ms_card->segment[i].l2p_table = NULL;
		ms_card->segment[i].free_table = NULL;
		ms_card->segment[i].get_index = 0;
		ms_card->segment[i].set_index = 0;
		ms_card->segment[i].unused_blk_cnt = 0;

		FUNC0(FUNC2(chip), "defective block count of segment %d is %d\n",
			i, ms_card->segment[i].disable_count);
	}

	return STATUS_SUCCESS;

INIT_FAIL:
	FUNC4(ms_card->segment);
	ms_card->segment = NULL;

	return STATUS_FAIL;
}