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
typedef  scalar_t__ u64 ;
struct writeback_control {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_HAS_ASYNC_EXTENT ; 
 int BTRFS_INODE_NODATACOW ; 
 int BTRFS_INODE_PREALLOC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct page*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct inode*,struct page*,scalar_t__,scalar_t__,int*,unsigned long*,int) ; 
 int FUNC3 (struct inode*,struct page*,scalar_t__,scalar_t__,int*,unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC7 (struct inode*,struct page*,scalar_t__,scalar_t__,int*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC9 (struct writeback_control*) ; 

int FUNC10(struct inode *inode, struct page *locked_page,
		u64 start, u64 end, int *page_started, unsigned long *nr_written,
		struct writeback_control *wbc)
{
	int ret;
	int force_cow = FUNC6(inode, start, end);
	unsigned int write_flags = FUNC9(wbc);

	if (FUNC0(inode)->flags & BTRFS_INODE_NODATACOW && !force_cow) {
		ret = FUNC7(inode, locked_page, start, end,
					 page_started, 1, nr_written);
	} else if (FUNC0(inode)->flags & BTRFS_INODE_PREALLOC && !force_cow) {
		ret = FUNC7(inode, locked_page, start, end,
					 page_started, 0, nr_written);
	} else if (!FUNC4(inode) ||
		   !FUNC5(inode, start, end)) {
		ret = FUNC2(inode, locked_page, start, end,
				      page_started, nr_written, 1);
	} else {
		FUNC8(BTRFS_INODE_HAS_ASYNC_EXTENT,
			&FUNC0(inode)->runtime_flags);
		ret = FUNC3(inode, locked_page, start, end,
					   page_started, nr_written,
					   write_flags);
	}
	if (ret)
		FUNC1(inode, locked_page, start,
					      end - start + 1);
	return ret;
}