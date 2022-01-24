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
struct super_block {scalar_t__ s_magic; int /*<<< orphan*/ * s_fs_info; } ;
struct erofs_sb_info {int dummy; } ;

/* Variables and functions */
 struct erofs_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ EROFS_SUPER_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct erofs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	struct erofs_sb_info *sbi;

	FUNC1(sb->s_magic != EROFS_SUPER_MAGIC);

	FUNC3(sb);

	sbi = FUNC0(sb);
	if (!sbi)
		return;
	FUNC2(sbi);
	sb->s_fs_info = NULL;
}