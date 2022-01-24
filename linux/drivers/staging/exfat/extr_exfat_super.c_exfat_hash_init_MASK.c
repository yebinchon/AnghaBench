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
struct exfat_sb_info {int /*<<< orphan*/ * inode_hashtable; int /*<<< orphan*/  inode_hash_lock; } ;

/* Variables and functions */
 int EXFAT_HASH_SIZE ; 
 struct exfat_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct super_block *sb)
{
	struct exfat_sb_info *sbi = FUNC0(sb);
	int i;

	FUNC2(&sbi->inode_hash_lock);
	for (i = 0; i < EXFAT_HASH_SIZE; i++)
		FUNC1(&sbi->inode_hashtable[i]);
}