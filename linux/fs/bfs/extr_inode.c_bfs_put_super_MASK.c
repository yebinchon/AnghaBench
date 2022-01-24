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
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct bfs_sb_info {int /*<<< orphan*/  bfs_lock; } ;

/* Variables and functions */
 struct bfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct super_block *s)
{
	struct bfs_sb_info *info = FUNC0(s);

	if (!info)
		return;

	FUNC2(&info->bfs_lock);
	FUNC1(info);
	s->s_fs_info = NULL;
}