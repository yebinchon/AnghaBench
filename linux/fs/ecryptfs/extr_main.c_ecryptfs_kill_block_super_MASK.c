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
struct ecryptfs_sb_info {int /*<<< orphan*/  mount_crypt_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ecryptfs_sb_info_cache ; 
 struct ecryptfs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ecryptfs_sb_info*) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	struct ecryptfs_sb_info *sb_info = FUNC1(sb);
	FUNC2(sb);
	if (!sb_info)
		return;
	FUNC0(&sb_info->mount_crypt_stat);
	FUNC3(ecryptfs_sb_info_cache, sb_info);
}