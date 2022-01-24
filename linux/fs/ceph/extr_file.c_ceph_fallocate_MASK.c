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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {struct ceph_file_info* private_data; } ;
struct ceph_inode_info {scalar_t__ i_inline_version; int /*<<< orphan*/  i_ceph_lock; } ;
struct ceph_file_info {int fmode; } ;
struct ceph_cap_flush {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int CEPH_CAP_FILE_BUFFER ; 
 int CEPH_CAP_FILE_LAZYIO ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_WR ; 
 int CEPH_FILE_MODE_LAZY ; 
 scalar_t__ CEPH_INLINE_NONE ; 
 scalar_t__ CEPH_NOSNAP ; 
 long ENOMEM ; 
 long EOPNOTSUPP ; 
 int EROFS ; 
 int FALLOC_FL_KEEP_SIZE ; 
 int FALLOC_FL_PUNCH_HOLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ceph_inode_info*,int /*<<< orphan*/ ,struct ceph_cap_flush**) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 struct ceph_cap_flush* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_cap_flush*) ; 
 int FUNC5 (struct file*,int /*<<< orphan*/ ,int,scalar_t__,int*,int /*<<< orphan*/ *) ; 
 struct ceph_inode_info* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_inode_info*,int) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int FUNC9 (struct file*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,scalar_t__,scalar_t__) ; 
 struct inode* FUNC12 (struct file*) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC18(struct file *file, int mode,
				loff_t offset, loff_t length)
{
	struct ceph_file_info *fi = file->private_data;
	struct inode *inode = FUNC12(file);
	struct ceph_inode_info *ci = FUNC6(inode);
	struct ceph_cap_flush *prealloc_cf;
	int want, got = 0;
	int dirty;
	int ret = 0;
	loff_t endoff = 0;
	loff_t size;

	if (mode != (FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE))
		return -EOPNOTSUPP;

	if (!FUNC0(inode->i_mode))
		return -EOPNOTSUPP;

	prealloc_cf = FUNC3();
	if (!prealloc_cf)
		return -ENOMEM;

	FUNC14(inode);

	if (FUNC8(inode) != CEPH_NOSNAP) {
		ret = -EROFS;
		goto unlock;
	}

	if (ci->i_inline_version != CEPH_INLINE_NONE) {
		ret = FUNC9(file, NULL);
		if (ret < 0)
			goto unlock;
	}

	size = FUNC13(inode);

	/* Are we punching a hole beyond EOF? */
	if (offset >= size)
		goto unlock;
	if ((offset + length) > size)
		length = size - offset;

	if (fi->fmode & CEPH_FILE_MODE_LAZY)
		want = CEPH_CAP_FILE_BUFFER | CEPH_CAP_FILE_LAZYIO;
	else
		want = CEPH_CAP_FILE_BUFFER;

	ret = FUNC5(file, CEPH_CAP_FILE_WR, want, endoff, &got, NULL);
	if (ret < 0)
		goto unlock;

	FUNC11(inode, offset, length);
	ret = FUNC10(inode, offset, length);

	if (!ret) {
		FUNC16(&ci->i_ceph_lock);
		ci->i_inline_version = CEPH_INLINE_NONE;
		dirty = FUNC1(ci, CEPH_CAP_FILE_WR,
					       &prealloc_cf);
		FUNC17(&ci->i_ceph_lock);
		if (dirty)
			FUNC2(inode, dirty);
	}

	FUNC7(ci, got);
unlock:
	FUNC15(inode);
	FUNC4(prealloc_cf);
	return ret;
}