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
struct super_block {scalar_t__ s_bdev; scalar_t__ s_mtd; } ;
struct cramfs_sb_info {int /*<<< orphan*/  mtd_point_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CRAMFS_BLOCKDEV ; 
 int /*<<< orphan*/  CONFIG_CRAMFS_MTD ; 
 struct cramfs_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cramfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct super_block *sb)
{
	struct cramfs_sb_info *sbi = FUNC0(sb);

	if (FUNC1(CONFIG_CRAMFS_MTD) && sb->s_mtd) {
		if (sbi && sbi->mtd_point_size)
			FUNC5(sb->s_mtd, 0, sbi->mtd_point_size);
		FUNC4(sb);
	} else if (FUNC1(CONFIG_CRAMFS_BLOCKDEV) && sb->s_bdev) {
		FUNC3(sb);
	}
	FUNC2(sbi);
}