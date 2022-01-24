#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int /*<<< orphan*/  pages_skipped; } ;
struct page {scalar_t__ private; int /*<<< orphan*/  index; TYPE_2__* mapping; } ;
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_mtime; } ;
struct ceph_writeback_ctl {int /*<<< orphan*/  truncate_size; int /*<<< orphan*/  truncate_seq; int /*<<< orphan*/  i_size; } ;
struct ceph_snap_context {scalar_t__ seq; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_layout; } ;
struct ceph_fs_client {int blacklisted; TYPE_4__* mount_options; int /*<<< orphan*/  writeback_count; TYPE_3__* client; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  congestion_kb; } ;
struct TYPE_8__ {int /*<<< orphan*/  osdc; } ;
struct TYPE_7__ {TYPE_1__* a_ops; struct inode* host; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* invalidatepage ) (struct page*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int EBLACKLISTED ; 
 int ERESTARTSYS ; 
 int PAGE_SIZE ; 
 int PF_MEMALLOC ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct ceph_inode_info* FUNC6 (struct inode*) ; 
 struct ceph_fs_client* FUNC7 (struct inode*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ceph_snap_context*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct page**,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_snap_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_inode_info*,int,struct ceph_snap_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 struct ceph_snap_context* FUNC15 (struct inode*,struct ceph_writeback_ctl*,struct ceph_snap_context*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 struct ceph_snap_context* FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC24(struct page *page, struct writeback_control *wbc)
{
	struct inode *inode;
	struct ceph_inode_info *ci;
	struct ceph_fs_client *fsc;
	struct ceph_snap_context *snapc, *oldest;
	loff_t page_off = FUNC18(page);
	int err, len = PAGE_SIZE;
	struct ceph_writeback_ctl ceph_wbc;

	FUNC13("writepage %p idx %lu\n", page, page->index);

	inode = page->mapping->host;
	ci = FUNC6(inode);
	fsc = FUNC7(inode);

	/* verify this is a writeable snap context */
	snapc = FUNC19(page);
	if (!snapc) {
		FUNC13("writepage %p page %p not dirty?\n", inode, page);
		return 0;
	}
	oldest = FUNC15(inode, &ceph_wbc, snapc);
	if (snapc->seq > oldest->seq) {
		FUNC13("writepage %p page %p snapc %p not writeable - noop\n",
		     inode, page, snapc);
		/* we should only noop if called by kswapd */
		FUNC3(!(current->flags & PF_MEMALLOC));
		FUNC9(oldest);
		FUNC20(wbc, page);
		return 0;
	}
	FUNC9(oldest);

	/* is this a partial page at end of file? */
	if (page_off >= ceph_wbc.i_size) {
		FUNC13("%p page eof %llu\n", page, ceph_wbc.i_size);
		page->mapping->a_ops->invalidatepage(page, 0, PAGE_SIZE);
		return 0;
	}

	if (ceph_wbc.i_size < page_off + len)
		len = ceph_wbc.i_size - page_off;

	FUNC13("writepage %p page %p index %lu on %llu~%u snapc %p seq %lld\n",
	     inode, page, page->index, page_off, len, snapc, snapc->seq);

	if (FUNC5(&fsc->writeback_count) >
	    FUNC1(fsc->mount_options->congestion_kb))
		FUNC21(FUNC16(inode), BLK_RW_ASYNC);

	FUNC22(page);
	err = FUNC8(&fsc->client->osdc, FUNC11(inode),
				   &ci->i_layout, snapc, page_off, len,
				   ceph_wbc.truncate_seq,
				   ceph_wbc.truncate_size,
				   &inode->i_mtime, &page, 1);
	if (err < 0) {
		struct writeback_control tmp_wbc;
		if (!wbc)
			wbc = &tmp_wbc;
		if (err == -ERESTARTSYS) {
			/* killed by SIGKILL */
			FUNC13("writepage interrupted page %p\n", page);
			FUNC20(wbc, page);
			FUNC14(page);
			return err;
		}
		if (err == -EBLACKLISTED)
			fsc->blacklisted = true;
		FUNC13("writepage setting page/mapping error %d %p\n",
		     err, page);
		FUNC17(&inode->i_data, err);
		wbc->pages_skipped++;
	} else {
		FUNC13("writepage cleaned page %p\n", page);
		err = 0;  /* vfs expects us to return 0 */
	}
	page->private = 0;
	FUNC2(page);
	FUNC14(page);
	FUNC10(ci, 1, snapc);
	FUNC9(snapc);  /* page's reference */

	if (FUNC4(&fsc->writeback_count) <
	    FUNC0(fsc->mount_options->congestion_kb))
		FUNC12(FUNC16(inode), BLK_RW_ASYNC);

	return err;
}