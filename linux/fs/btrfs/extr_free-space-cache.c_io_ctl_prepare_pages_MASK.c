#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct btrfs_io_ctl {int num_pages; struct page** pages; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {TYPE_1__* root; } ;
struct TYPE_3__ {int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_io_ctl*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

__attribute__((used)) static int FUNC10(struct btrfs_io_ctl *io_ctl, struct inode *inode,
				int uptodate)
{
	struct page *page;
	gfp_t mask = FUNC2(inode->i_mapping);
	int i;

	for (i = 0; i < io_ctl->num_pages; i++) {
		page = FUNC6(inode->i_mapping, i, mask);
		if (!page) {
			FUNC7(io_ctl);
			return -ENOMEM;
		}
		io_ctl->pages[i] = page;
		if (uptodate && !FUNC1(page)) {
			FUNC4(NULL, page);
			FUNC8(page);
			if (!FUNC1(page)) {
				FUNC3(FUNC0(inode)->root->fs_info,
					   "error reading free space cache");
				FUNC7(io_ctl);
				return -EIO;
			}
		}
	}

	for (i = 0; i < io_ctl->num_pages; i++) {
		FUNC5(io_ctl->pages[i]);
		FUNC9(io_ctl->pages[i]);
	}

	return 0;
}