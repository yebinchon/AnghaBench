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
struct erofs_sb_info {int /*<<< orphan*/ * managed_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct erofs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	struct erofs_sb_info *const sbi = FUNC1(sb);

	FUNC0(!sbi);

	FUNC2(sb);
#ifdef CONFIG_EROFS_FS_ZIP
	iput(sbi->managed_cache);
	sbi->managed_cache = NULL;
#endif
}