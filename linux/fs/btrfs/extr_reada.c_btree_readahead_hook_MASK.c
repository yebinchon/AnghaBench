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
struct reada_extent {int /*<<< orphan*/  refcnt; } ;
struct extent_buffer {int start; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  reada_lock; int /*<<< orphan*/  reada_tree; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,struct reada_extent*,struct extent_buffer*,int) ; 
 struct reada_extent* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,struct reada_extent*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct extent_buffer *eb, int err)
{
	struct btrfs_fs_info *fs_info = eb->fs_info;
	int ret = 0;
	struct reada_extent *re;

	/* find extent */
	FUNC4(&fs_info->reada_lock);
	re = FUNC1(&fs_info->reada_tree,
			       eb->start >> PAGE_SHIFT);
	if (re)
		re->refcnt++;
	FUNC5(&fs_info->reada_lock);
	if (!re) {
		ret = -1;
		goto start_machine;
	}

	FUNC0(fs_info, re, eb, err);
	FUNC2(fs_info, re);	/* our ref */

start_machine:
	FUNC3(fs_info);
	return ret;
}