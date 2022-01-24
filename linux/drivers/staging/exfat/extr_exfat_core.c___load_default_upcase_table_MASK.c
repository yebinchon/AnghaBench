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
typedef  int u32 ;
typedef  int u16 ;
struct super_block {int dummy; } ;
struct fs_info_t {int** vol_utbl; } ;
typedef  int s32 ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int FFS_ERROR ; 
 int FFS_MEMORYERR ; 
 int FFS_SUCCESS ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LOW_INDEX_BIT ; 
 int NUM_UPCASE ; 
 int UTBL_COL_COUNT ; 
 int UTBL_ROW_COUNT ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
 int** FUNC5 (int,int /*<<< orphan*/ ) ; 
 int* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 scalar_t__ uni_upcase ; 

__attribute__((used)) static s32 FUNC9(struct super_block *sb)
{
	int i, ret = FFS_ERROR;
	u32 j;
	struct fs_info_t *p_fs = &(FUNC0(sb)->fs_info);

	bool	skip = false;
	u32	index = 0;
	u16	uni = 0;
	u16 **upcase_table;

	upcase_table = p_fs->vol_utbl = FUNC5(UTBL_COL_COUNT * sizeof(u16 *),
						GFP_KERNEL);
	if (!upcase_table)
		return FFS_MEMORYERR;
	FUNC7(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));

	for (i = 0; index <= 0xFFFF && i < NUM_UPCASE * 2; i += 2) {
		uni = FUNC1(uni_upcase + i);
		if (skip) {
			FUNC8("skip from 0x%X ", index);
			index += uni;
			FUNC8("to 0x%X (amount of 0x%X)\n", index, uni);
			skip = false;
		} else if (uni == index) {
			index++;
		} else if (uni == 0xFFFF) {
			skip = true;
		} else { /* uni != index , uni != 0xFFFF */
			u16 col_index = FUNC3(index);

			if (!upcase_table[col_index]) {
				FUNC8("alloc = 0x%X\n", col_index);
				upcase_table[col_index] = FUNC6(UTBL_ROW_COUNT,
									sizeof(u16),
									GFP_KERNEL);
				if (!upcase_table[col_index]) {
					ret = FFS_MEMORYERR;
					goto error;
				}

				for (j = 0; j < UTBL_ROW_COUNT; j++)
					upcase_table[col_index][j] = (col_index << LOW_INDEX_BIT) | j;
			}

			upcase_table[col_index][FUNC4(index)] = uni;
			index++;
		}
	}

	if (index >= 0xFFFF)
		return FFS_SUCCESS;

error:
	/* FATAL error: default upcase table has error */
	FUNC2(sb);
	return ret;
}