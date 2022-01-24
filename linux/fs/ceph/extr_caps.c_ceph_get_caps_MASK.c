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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct file {struct ceph_file_info* private_data; } ;
struct ceph_inode_info {scalar_t__ i_inline_version; int /*<<< orphan*/  i_cap_wq; } ;
struct ceph_fs_client {int /*<<< orphan*/  filp_gen; } ;
struct ceph_file_info {int fmode; scalar_t__ filp_gen; int /*<<< orphan*/  num_locks; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int CEPH_CAP_FILE_CACHE ; 
 int CEPH_CAP_FILE_LAZYIO ; 
 int CEPH_CAP_FILE_RD ; 
 int CEPH_FILE_MODE_WR ; 
 scalar_t__ CEPH_INLINE_NONE ; 
 int /*<<< orphan*/  CEPH_STAT_CAP_INLINE_DATA ; 
 int CHECK_FILELOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EBADF ; 
 int ERESTARTSYS ; 
 int ESTALE ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int NON_BLOCKING ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_inode_info*) ; 
 struct ceph_inode_info* FUNC7 (struct inode*) ; 
 struct ceph_fs_client* FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_inode_info*,int) ; 
 int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct inode* FUNC13 (struct file*) ; 
 struct page* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct inode*,int,int,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  woken_wake_function ; 

int FUNC21(struct file *filp, int need, int want,
		  loff_t endoff, int *got, struct page **pinned_page)
{
	struct ceph_file_info *fi = filp->private_data;
	struct inode *inode = FUNC13(filp);
	struct ceph_inode_info *ci = FUNC7(inode);
	struct ceph_fs_client *fsc = FUNC8(inode);
	int ret, _got, flags;

	ret = FUNC9(inode, need);
	if (ret < 0)
		return ret;

	if ((fi->fmode & CEPH_FILE_MODE_WR) &&
	    fi->filp_gen != FUNC2(fsc->filp_gen))
		return -EBADF;

	while (true) {
		if (endoff > 0)
			FUNC12(inode, endoff);

		flags = FUNC5(&fi->num_locks) ? CHECK_FILELOCK : 0;
		_got = 0;
		ret = FUNC19(inode, need, want, endoff,
				       flags, &_got);
		if (ret == -EAGAIN)
			continue;
		if (!ret) {
			FUNC0(wait, woken_wake_function);
			FUNC4(&ci->i_cap_wq, &wait);

			flags |= NON_BLOCKING;
			while (!(ret = FUNC19(inode, need, want,
							endoff, flags, &_got))) {
				if (FUNC18(current)) {
					ret = -ERESTARTSYS;
					break;
				}
				FUNC20(&wait, TASK_INTERRUPTIBLE, MAX_SCHEDULE_TIMEOUT);
			}

			FUNC17(&ci->i_cap_wq, &wait);
			if (ret == -EAGAIN)
				continue;
		}

		if ((fi->fmode & CEPH_FILE_MODE_WR) &&
		    fi->filp_gen != FUNC2(fsc->filp_gen)) {
			if (ret >= 0 && _got)
				FUNC10(ci, _got);
			return -EBADF;
		}

		if (ret < 0) {
			if (ret == -ESTALE) {
				/* session was killed, try renew caps */
				ret = FUNC11(inode);
				if (ret == 0)
					continue;
			}
			return ret;
		}

		if (ci->i_inline_version != CEPH_INLINE_NONE &&
		    (_got & (CEPH_CAP_FILE_CACHE|CEPH_CAP_FILE_LAZYIO)) &&
		    FUNC15(inode) > 0) {
			struct page *page =
				FUNC14(inode->i_mapping, 0);
			if (page) {
				if (FUNC1(page)) {
					*pinned_page = page;
					break;
				}
				FUNC16(page);
			}
			/*
			 * drop cap refs first because getattr while
			 * holding * caps refs can cause deadlock.
			 */
			FUNC10(ci, _got);
			_got = 0;

			/*
			 * getattr request will bring inline data into
			 * page cache
			 */
			ret = FUNC3(inode, NULL,
						CEPH_STAT_CAP_INLINE_DATA,
						true);
			if (ret < 0)
				return ret;
			continue;
		}
		break;
	}

	if ((_got & CEPH_CAP_FILE_RD) && (_got & CEPH_CAP_FILE_CACHE))
		FUNC6(ci);

	*got = _got;
	return 0;
}