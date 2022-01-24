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
typedef  int /*<<< orphan*/  xattr_buf ;
typedef  int u64 ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mapping; } ;
struct file {int dummy; } ;
struct ceph_osd_request {int /*<<< orphan*/  r_mtime; } ;
struct ceph_inode_info {int i_inline_version; int /*<<< orphan*/  i_truncate_size; int /*<<< orphan*/  i_truncate_seq; int /*<<< orphan*/  i_layout; int /*<<< orphan*/  i_ceph_lock; } ;
struct ceph_fs_client {TYPE_1__* client; } ;
typedef  char __le64 ;
struct TYPE_2__ {int /*<<< orphan*/  osdc; } ;

/* Variables and functions */
 int CEPH_CAP_FILE_CACHE ; 
 int CEPH_CAP_FILE_LAZYIO ; 
 int CEPH_INLINE_NONE ; 
 int /*<<< orphan*/  CEPH_OSD_CMPXATTR_MODE_U64 ; 
 int /*<<< orphan*/  CEPH_OSD_CMPXATTR_OP_GT ; 
 int /*<<< orphan*/  CEPH_OSD_FLAG_WRITE ; 
 int /*<<< orphan*/  CEPH_OSD_OP_CMPXATTR ; 
 int /*<<< orphan*/  CEPH_OSD_OP_CREATE ; 
 int /*<<< orphan*/  CEPH_OSD_OP_SETXATTR ; 
 int /*<<< orphan*/  CEPH_OSD_OP_WRITE ; 
 int /*<<< orphan*/  CEPH_STAT_CAP_INLINE_DATA ; 
 int ECANCELED ; 
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct ceph_osd_request*) ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct ceph_osd_request*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ceph_inode_info*) ; 
 struct ceph_inode_info* FUNC8 (struct inode*) ; 
 struct ceph_fs_client* FUNC9 (struct inode*) ; 
 struct ceph_osd_request* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ceph_osd_request*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct ceph_osd_request*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 char FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*,struct inode*,int /*<<< orphan*/ ,int,...) ; 
 struct inode* FUNC18 (struct file*) ; 
 struct page* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct ceph_osd_request*,int,struct page**,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC23 (struct ceph_osd_request*,int,int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int FUNC25 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 

int FUNC29(struct file *filp, struct page *locked_page)
{
	struct inode *inode = FUNC18(filp);
	struct ceph_inode_info *ci = FUNC8(inode);
	struct ceph_fs_client *fsc = FUNC9(inode);
	struct ceph_osd_request *req;
	struct page *page = NULL;
	u64 len, inline_version;
	int err = 0;
	bool from_pagecache = false;

	FUNC26(&ci->i_ceph_lock);
	inline_version = ci->i_inline_version;
	FUNC27(&ci->i_ceph_lock);

	FUNC17("uninline_data %p %llx.%llx inline_version %llu\n",
	     inode, FUNC15(inode), inline_version);

	if (inline_version == 1 || /* initial version, no data */
	    inline_version == CEPH_INLINE_NONE)
		goto out;

	if (locked_page) {
		page = locked_page;
		FUNC3(!FUNC2(page));
	} else if (FUNC7(ci) &
		   (CEPH_CAP_FILE_CACHE|CEPH_CAP_FILE_LAZYIO)) {
		page = FUNC19(inode->i_mapping, 0);
		if (page) {
			if (FUNC2(page)) {
				from_pagecache = true;
				FUNC21(page);
			} else {
				FUNC24(page);
				page = NULL;
			}
		}
	}

	if (page) {
		len = FUNC20(inode);
		if (len > PAGE_SIZE)
			len = PAGE_SIZE;
	} else {
		page = FUNC6(GFP_NOFS);
		if (!page) {
			err = -ENOMEM;
			goto out;
		}
		err = FUNC4(inode, page,
					CEPH_STAT_CAP_INLINE_DATA, true);
		if (err < 0) {
			/* no inline data */
			if (err == -ENODATA)
				err = 0;
			goto out;
		}
		len = err;
	}

	req = FUNC10(&fsc->client->osdc, &ci->i_layout,
				    FUNC14(inode), 0, &len, 0, 1,
				    CEPH_OSD_OP_CREATE, CEPH_OSD_FLAG_WRITE,
				    NULL, 0, 0, false);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto out;
	}

	req->r_mtime = inode->i_mtime;
	err = FUNC12(&fsc->client->osdc, req, false);
	if (!err)
		err = FUNC13(&fsc->client->osdc, req);
	FUNC11(req);
	if (err < 0)
		goto out;

	req = FUNC10(&fsc->client->osdc, &ci->i_layout,
				    FUNC14(inode), 0, &len, 1, 3,
				    CEPH_OSD_OP_WRITE, CEPH_OSD_FLAG_WRITE,
				    NULL, ci->i_truncate_seq,
				    ci->i_truncate_size, false);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto out;
	}

	FUNC22(req, 1, &page, len, 0, false, false);

	{
		__le64 xattr_buf = FUNC16(inline_version);
		err = FUNC23(req, 0, CEPH_OSD_OP_CMPXATTR,
					    "inline_version", &xattr_buf,
					    sizeof(xattr_buf),
					    CEPH_OSD_CMPXATTR_OP_GT,
					    CEPH_OSD_CMPXATTR_MODE_U64);
		if (err)
			goto out_put;
	}

	{
		char xattr_buf[32];
		int xattr_len = FUNC25(xattr_buf, sizeof(xattr_buf),
					 "%llu", inline_version);
		err = FUNC23(req, 2, CEPH_OSD_OP_SETXATTR,
					    "inline_version",
					    xattr_buf, xattr_len, 0, 0);
		if (err)
			goto out_put;
	}

	req->r_mtime = inode->i_mtime;
	err = FUNC12(&fsc->client->osdc, req, false);
	if (!err)
		err = FUNC13(&fsc->client->osdc, req);
out_put:
	FUNC11(req);
	if (err == -ECANCELED)
		err = 0;
out:
	if (page && page != locked_page) {
		if (from_pagecache) {
			FUNC28(page);
			FUNC24(page);
		} else
			FUNC5(page, 0);
	}

	FUNC17("uninline_data %p %llx.%llx inline_version %llu = %d\n",
	     inode, FUNC15(inode), inline_version, err);
	return err;
}