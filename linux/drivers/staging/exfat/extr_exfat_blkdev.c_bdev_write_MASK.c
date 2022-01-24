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
typedef  int u32 ;
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct fs_info_t {int /*<<< orphan*/  dev_ejected; } ;
struct bd_info_t {int sector_size_bits; int /*<<< orphan*/  opened; } ;
struct exfat_sb_info {long debug_flags; struct fs_info_t fs_info; struct bd_info_t bd_info; } ;
struct buffer_head {scalar_t__ b_blocknr; int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ sector_t ;
typedef  int s32 ;

/* Variables and functions */
 long EXFAT_DEBUGFLAGS_ERROR_RW ; 
 struct exfat_sb_info* FUNC0 (struct super_block*) ; 
 int FFS_MEDIAERR ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct buffer_head* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 scalar_t__ FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 

int FUNC10(struct super_block *sb, sector_t secno, struct buffer_head *bh,
	       u32 num_secs, bool sync)
{
	s32 count;
	struct buffer_head *bh2;
	struct bd_info_t *p_bd = &(FUNC0(sb)->bd_info);
	struct fs_info_t *p_fs = &(FUNC0(sb)->fs_info);
#ifdef CONFIG_EXFAT_KERNEL_DEBUG
	struct exfat_sb_info *sbi = EXFAT_SB(sb);
	long flags = sbi->debug_flags;

	if (flags & EXFAT_DEBUGFLAGS_ERROR_RW)
		return FFS_MEDIAERR;
#endif /* CONFIG_EXFAT_KERNEL_DEBUG */

	if (!p_bd->opened)
		return FFS_MEDIAERR;

	if (secno == bh->b_blocknr) {
		FUNC4(bh);
		FUNC7(bh);
		FUNC5(bh);
		FUNC9(bh);
		if (sync && (FUNC8(bh) != 0))
			return FFS_MEDIAERR;
	} else {
		count = num_secs << p_bd->sector_size_bits;

		bh2 = FUNC3(sb->s_bdev, secno, count);
		if (!bh2)
			goto no_bh;

		FUNC4(bh2);
		FUNC6(bh2->b_data, bh->b_data, count);
		FUNC7(bh2);
		FUNC5(bh2);
		FUNC9(bh2);
		if (sync && (FUNC8(bh2) != 0)) {
			FUNC2(bh2);
			goto no_bh;
		}
		FUNC2(bh2);
	}

	return 0;

no_bh:
	FUNC1(!p_fs->dev_ejected,
	     "[EXFAT] No bh, device seems wrong or to be ejected.\n");

	return FFS_MEDIAERR;
}