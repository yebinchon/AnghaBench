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
struct super_block {int dummy; } ;
struct cramfs_sb_info {scalar_t__ linear_virt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CRAMFS_BLOCKDEV ; 
 int /*<<< orphan*/  CONFIG_CRAMFS_MTD ; 
 struct cramfs_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct super_block*,unsigned int,unsigned int) ; 
 void* FUNC3 (struct super_block*,unsigned int,unsigned int) ; 

__attribute__((used)) static void *FUNC4(struct super_block *sb, unsigned int offset,
			 unsigned int len)
{
	struct cramfs_sb_info *sbi = FUNC0(sb);

	if (FUNC1(CONFIG_CRAMFS_MTD) && sbi->linear_virt_addr)
		return FUNC3(sb, offset, len);
	else if (FUNC1(CONFIG_CRAMFS_BLOCKDEV))
		return FUNC2(sb, offset, len);
	else
		return NULL;
}