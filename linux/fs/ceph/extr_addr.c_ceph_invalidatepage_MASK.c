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
struct page {scalar_t__ private; int /*<<< orphan*/  index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct ceph_snap_context {int dummy; } ;
struct ceph_inode_info {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct ceph_inode_info* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_snap_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_inode_info*,int,struct ceph_snap_context*) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct inode*,struct page*,int /*<<< orphan*/ ,...) ; 
 struct ceph_snap_context* FUNC10 (struct page*) ; 

__attribute__((used)) static void FUNC11(struct page *page, unsigned int offset,
				unsigned int length)
{
	struct inode *inode;
	struct ceph_inode_info *ci;
	struct ceph_snap_context *snapc = FUNC10(page);

	inode = page->mapping->host;
	ci = FUNC5(inode);

	if (offset != 0 || length != PAGE_SIZE) {
		FUNC9("%p invalidatepage %p idx %lu partial dirty page %u~%u\n",
		     inode, page, page->index, offset, length);
		return;
	}

	FUNC6(inode, page);

	FUNC4(!FUNC2(page));
	if (!FUNC3(page))
		return;

	FUNC0(page);

	FUNC9("%p invalidatepage %p idx %lu full dirty page\n",
	     inode, page, page->index);

	FUNC8(ci, 1, snapc);
	FUNC7(snapc);
	page->private = 0;
	FUNC1(page);
}