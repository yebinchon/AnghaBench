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
typedef  int /*<<< orphan*/  u64 ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_writepage_fixup {int /*<<< orphan*/  work; struct page* page; } ;
struct btrfs_fs_info {int /*<<< orphan*/  fixup_workers; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  btrfs_fixup_helper ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct btrfs_fs_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btrfs_writepage_fixup_worker ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct btrfs_writepage_fixup* FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(struct page *page, u64 start, u64 end)
{
	struct inode *inode = page->mapping->host;
	struct btrfs_fs_info *fs_info = FUNC5(inode->i_sb);
	struct btrfs_writepage_fixup *fixup;

	/* this page is properly in the ordered list */
	if (FUNC2(page))
		return 0;

	if (FUNC0(page))
		return -EAGAIN;

	fixup = FUNC7(sizeof(*fixup), GFP_NOFS);
	if (!fixup)
		return -EAGAIN;

	FUNC1(page);
	FUNC6(page);
	FUNC3(&fixup->work, btrfs_fixup_helper,
			btrfs_writepage_fixup_worker, NULL, NULL);
	fixup->page = page;
	FUNC4(fs_info->fixup_workers, &fixup->work);
	return -EBUSY;
}