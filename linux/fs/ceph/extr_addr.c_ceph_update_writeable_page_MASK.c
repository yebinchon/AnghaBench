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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct ceph_snap_context {scalar_t__ seq; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_cap_wq; struct ceph_snap_context* i_head_snapc; } ;
struct ceph_fs_client {int /*<<< orphan*/  mount_state; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ CEPH_MOUNT_SHUTDOWN ; 
 int EAGAIN ; 
 int EINPROGRESS ; 
 int EIO ; 
 int ERESTARTSYS ; 
 scalar_t__ PAGE_MASK ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,struct page*) ; 
 struct ceph_snap_context* FUNC3 (struct ceph_snap_context*) ; 
 struct ceph_inode_info* FUNC4 (struct inode*) ; 
 struct ceph_fs_client* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_snap_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct ceph_snap_context*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct page*,...) ; 
 struct inode* FUNC11 (struct file*) ; 
 struct ceph_snap_context* FUNC12 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 struct ceph_snap_context* FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int FUNC18 (struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct page*,int /*<<< orphan*/ ,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC20(struct file *file,
			    loff_t pos, unsigned len,
			    struct page *page)
{
	struct inode *inode = FUNC11(file);
	struct ceph_fs_client *fsc = FUNC5(inode);
	struct ceph_inode_info *ci = FUNC4(inode);
	loff_t page_off = pos & PAGE_MASK;
	int pos_in_page = pos & ~PAGE_MASK;
	int end_in_page = pos_in_page + len;
	loff_t i_size;
	int r;
	struct ceph_snap_context *snapc, *oldest;

	if (FUNC1(fsc->mount_state) == CEPH_MOUNT_SHUTDOWN) {
		FUNC10(" page %p forced umount\n", page);
		FUNC15(page);
		return -EIO;
	}

retry_locked:
	/* writepages currently holds page lock, but if we change that later, */
	FUNC17(page);

	snapc = FUNC14(page);
	if (snapc && snapc != ci->i_head_snapc) {
		/*
		 * this page is already dirty in another (older) snap
		 * context!  is it writeable now?
		 */
		oldest = FUNC12(inode, NULL, NULL);
		if (snapc->seq > oldest->seq) {
			FUNC6(oldest);
			FUNC10(" page %p snapc %p not current or oldest\n",
			     page, snapc);
			/*
			 * queue for writeback, and wait for snapc to
			 * be writeable or written
			 */
			snapc = FUNC3(snapc);
			FUNC15(page);
			FUNC7(inode);
			r = FUNC16(ci->i_cap_wq,
			       FUNC9(inode, snapc));
			FUNC6(snapc);
			if (r == -ERESTARTSYS)
				return r;
			return -EAGAIN;
		}
		FUNC6(oldest);

		/* yay, writeable, do it now (without dropping page lock) */
		FUNC10(" page %p snapc %p not current, but oldest\n",
		     page, snapc);
		if (!FUNC8(page))
			goto retry_locked;
		r = FUNC18(page, NULL);
		if (r < 0)
			goto fail_unlock;
		goto retry_locked;
	}

	if (FUNC0(page)) {
		FUNC10(" page %p already uptodate\n", page);
		return 0;
	}

	/* full page? */
	if (pos_in_page == 0 && len == PAGE_SIZE)
		return 0;

	/* past end of file? */
	i_size = FUNC13(inode);

	if (page_off >= i_size ||
	    (pos_in_page == 0 && (pos+len) >= i_size &&
	     end_in_page - pos_in_page != PAGE_SIZE)) {
		FUNC10(" zeroing %p 0 - %d and %d - %d\n",
		     page, pos_in_page, end_in_page, (int)PAGE_SIZE);
		FUNC19(page,
				   0, pos_in_page,
				   end_in_page, PAGE_SIZE);
		return 0;
	}

	/* we need to read it. */
	r = FUNC2(file, page);
	if (r < 0) {
		if (r == -EINPROGRESS)
			return -EAGAIN;
		goto fail_unlock;
	}
	goto retry_locked;
fail_unlock:
	FUNC15(page);
	return r;
}