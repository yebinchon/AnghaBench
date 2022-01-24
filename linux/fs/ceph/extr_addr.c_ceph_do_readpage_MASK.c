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
struct page {int /*<<< orphan*/  index; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct ceph_inode_info {scalar_t__ i_inline_version; int /*<<< orphan*/  i_truncate_size; int /*<<< orphan*/  i_truncate_seq; int /*<<< orphan*/  i_layout; } ;
struct ceph_fs_client {int blacklisted; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  osdc; } ;

/* Variables and functions */
 scalar_t__ CEPH_INLINE_NONE ; 
 int EBLACKLISTED ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOENT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct page*) ; 
 struct ceph_inode_info* FUNC3 (struct inode*) ; 
 struct ceph_fs_client* FUNC4 (struct inode*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page**,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct inode*,struct file*,struct page*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int,int) ; 

__attribute__((used)) static int FUNC15(struct file *filp, struct page *page)
{
	struct inode *inode = FUNC10(filp);
	struct ceph_inode_info *ci = FUNC3(inode);
	struct ceph_fs_client *fsc = FUNC4(inode);
	int err = 0;
	u64 off = FUNC13(page);
	u64 len = PAGE_SIZE;

	if (off >= FUNC12(inode)) {
		FUNC14(page, 0, PAGE_SIZE);
		FUNC1(page);
		return 0;
	}

	if (ci->i_inline_version != CEPH_INLINE_NONE) {
		/*
		 * Uptodate inline data should have been added
		 * into page cache while getting Fcr caps.
		 */
		if (off == 0)
			return -EINVAL;
		FUNC14(page, 0, PAGE_SIZE);
		FUNC1(page);
		return 0;
	}

	err = FUNC6(inode, page);
	if (err == 0)
		return -EINPROGRESS;

	FUNC9("readpage inode %p file %p page %p index %lu\n",
	     inode, filp, page, page->index);
	err = FUNC5(&fsc->client->osdc, FUNC8(inode),
				  &ci->i_layout, off, &len,
				  ci->i_truncate_seq, ci->i_truncate_size,
				  &page, 1, 0);
	if (err == -ENOENT)
		err = 0;
	if (err < 0) {
		FUNC0(page);
		FUNC2(inode, page);
		if (err == -EBLACKLISTED)
			fsc->blacklisted = true;
		goto out;
	}
	if (err < PAGE_SIZE)
		/* zero fill remainder of page */
		FUNC14(page, err, PAGE_SIZE);
	else
		FUNC11(page);

	FUNC1(page);
	FUNC7(inode, page);

out:
	return err < 0 ? err : 0;
}