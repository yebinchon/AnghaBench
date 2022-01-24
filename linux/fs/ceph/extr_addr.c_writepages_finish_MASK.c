#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct page {scalar_t__ private; } ;
struct inode {int /*<<< orphan*/  i_sb; struct address_space* i_mapping; } ;
struct ceph_snap_context {int dummy; } ;
struct ceph_osd_request {int r_result; int r_num_ops; TYPE_1__* r_ops; struct ceph_snap_context* r_snapc; struct inode* r_inode; } ;
struct ceph_osd_data {scalar_t__ type; struct page** pages; scalar_t__ pages_from_pool; scalar_t__ length; scalar_t__ alignment; } ;
struct ceph_inode_info {int dummy; } ;
struct ceph_fs_client {int blacklisted; TYPE_2__* mount_options; int /*<<< orphan*/  writeback_count; } ;
struct address_space {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  wb_pagevec_pool; } ;
struct TYPE_5__ {int /*<<< orphan*/  congestion_kb; } ;
struct TYPE_4__ {scalar_t__ op; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CEPH_CAP_FILE_CACHE ; 
 int CEPH_CAP_FILE_LAZYIO ; 
 scalar_t__ CEPH_OSD_DATA_TYPE_PAGES ; 
 scalar_t__ CEPH_OSD_OP_WRITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int EBLACKLISTED ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_inode_info*) ; 
 struct ceph_inode_info* FUNC9 (struct inode*) ; 
 struct ceph_fs_client* FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ceph_inode_info*,int,struct ceph_snap_context*) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct page**) ; 
 int /*<<< orphan*/  FUNC22 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct page**,int /*<<< orphan*/ ) ; 
 struct ceph_osd_data* FUNC24 (struct ceph_osd_request*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct page**,int) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 

__attribute__((used)) static void FUNC28(struct ceph_osd_request *req)
{
	struct inode *inode = req->r_inode;
	struct ceph_inode_info *ci = FUNC9(inode);
	struct ceph_osd_data *osd_data;
	struct page *page;
	int num_pages, total_pages = 0;
	int i, j;
	int rc = req->r_result;
	struct ceph_snap_context *snapc = req->r_snapc;
	struct address_space *mapping = inode->i_mapping;
	struct ceph_fs_client *fsc = FUNC10(inode);
	bool remove_page;

	FUNC17("writepages_finish %p rc %d\n", inode, rc);
	if (rc < 0) {
		FUNC22(mapping, rc);
		FUNC15(ci);
		if (rc == -EBLACKLISTED)
			fsc->blacklisted = true;
	} else {
		FUNC8(ci);
	}

	/*
	 * We lost the cache cap, need to truncate the page before
	 * it is unlocked, otherwise we'd truncate it later in the
	 * page truncation thread, possibly losing some data that
	 * raced its way in
	 */
	remove_page = !(FUNC7(ci) &
			(CEPH_CAP_FILE_CACHE|CEPH_CAP_FILE_LAZYIO));

	/* clean all pages */
	for (i = 0; i < req->r_num_ops; i++) {
		if (req->r_ops[i].op != CEPH_OSD_OP_WRITE)
			break;

		osd_data = FUNC24(req, i);
		FUNC0(osd_data->type != CEPH_OSD_DATA_TYPE_PAGES);
		num_pages = FUNC6((u64)osd_data->alignment,
					   (u64)osd_data->length);
		total_pages += num_pages;
		for (j = 0; j < num_pages; j++) {
			page = osd_data->pages[j];
			FUNC0(!page);
			FUNC4(!FUNC3(page));

			if (FUNC5(&fsc->writeback_count) <
			     FUNC1(
					fsc->mount_options->congestion_kb))
				FUNC16(FUNC20(inode),
						    BLK_RW_ASYNC);

			FUNC12(FUNC25(page));
			page->private = 0;
			FUNC2(page);
			FUNC17("unlocking %p\n", page);
			FUNC18(page);

			if (remove_page)
				FUNC19(inode->i_mapping,
							  page);

			FUNC27(page);
		}
		FUNC17("writepages_finish %p wrote %llu bytes cleaned %d pages\n",
		     inode, osd_data->length, rc >= 0 ? num_pages : 0);

		FUNC26(osd_data->pages, num_pages);
	}

	FUNC13(ci, total_pages, snapc);

	osd_data = FUNC24(req, 0);
	if (osd_data->pages_from_pool)
		FUNC23(osd_data->pages,
			     FUNC14(inode->i_sb)->wb_pagevec_pool);
	else
		FUNC21(osd_data->pages);
	FUNC11(req);
}