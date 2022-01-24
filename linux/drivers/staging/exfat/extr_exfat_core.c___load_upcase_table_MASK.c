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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct super_block {int dummy; } ;
struct fs_info_t {scalar_t__** vol_utbl; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bd_info_t {int sector_size; } ;
typedef  scalar_t__ sector_t ;
typedef  int s32 ;
struct TYPE_2__ {struct bd_info_t bd_info; struct fs_info_t fs_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int FFS_ERROR ; 
 int FFS_MEMORYERR ; 
 int FFS_SUCCESS ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ LOW_INDEX_BIT ; 
 int UTBL_COL_COUNT ; 
 scalar_t__ UTBL_ROW_COUNT ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 size_t FUNC5 (scalar_t__) ; 
 scalar_t__** FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC7 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,...) ; 
 int FUNC10 (struct super_block*,scalar_t__,struct buffer_head**,int) ; 

__attribute__((used)) static s32 FUNC11(struct super_block *sb, sector_t sector,
			       u32 num_sectors, u32 utbl_checksum)
{
	int i, ret = FFS_ERROR;
	u32 j;
	struct fs_info_t *p_fs = &(FUNC0(sb)->fs_info);
	struct bd_info_t *p_bd = &(FUNC0(sb)->bd_info);
	struct buffer_head *tmp_bh = NULL;
	sector_t end_sector = num_sectors + sector;

	bool	skip = false;
	u32	index = 0;
	u16	uni = 0;
	u16 **upcase_table;

	u32 checksum = 0;

	upcase_table = p_fs->vol_utbl = FUNC6(UTBL_COL_COUNT * sizeof(u16 *),
						GFP_KERNEL);
	if (!upcase_table)
		return FFS_MEMORYERR;
	FUNC8(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));

	while (sector < end_sector) {
		ret = FUNC10(sb, sector, &tmp_bh, 1);
		if (ret != FFS_SUCCESS) {
			FUNC9("sector read (0x%llX)fail\n",
				 (unsigned long long)sector);
			goto error;
		}
		sector++;

		for (i = 0; i < p_bd->sector_size && index <= 0xFFFF; i += 2) {
			uni = FUNC1(((u8 *)tmp_bh->b_data) + i);

			checksum = ((checksum & 1) ? 0x80000000 : 0) +
				   (checksum >> 1) + *(((u8 *)tmp_bh->b_data) +
						       i);
			checksum = ((checksum & 1) ? 0x80000000 : 0) +
				   (checksum >> 1) + *(((u8 *)tmp_bh->b_data) +
						       (i + 1));

			if (skip) {
				FUNC9("skip from 0x%X ", index);
				index += uni;
				FUNC9("to 0x%X (amount of 0x%X)\n",
					 index, uni);
				skip = false;
			} else if (uni == index) {
				index++;
			} else if (uni == 0xFFFF) {
				skip = true;
			} else { /* uni != index , uni != 0xFFFF */
				u16 col_index = FUNC4(index);

				if (!upcase_table[col_index]) {
					FUNC9("alloc = 0x%X\n", col_index);
					upcase_table[col_index] = FUNC7(UTBL_ROW_COUNT,
						sizeof(u16), GFP_KERNEL);
					if (!upcase_table[col_index]) {
						ret = FFS_MEMORYERR;
						goto error;
					}

					for (j = 0; j < UTBL_ROW_COUNT; j++)
						upcase_table[col_index][j] = (col_index << LOW_INDEX_BIT) | j;
				}

				upcase_table[col_index][FUNC5(index)] = uni;
				index++;
			}
		}
	}
	if (index >= 0xFFFF && utbl_checksum == checksum) {
		if (tmp_bh)
			FUNC2(tmp_bh);
		return FFS_SUCCESS;
	}
	ret = FFS_ERROR;
error:
	if (tmp_bh)
		FUNC2(tmp_bh);
	FUNC3(sb);
	return ret;
}