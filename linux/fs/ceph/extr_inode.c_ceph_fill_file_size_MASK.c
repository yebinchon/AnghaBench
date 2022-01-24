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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_mode; } ;
struct ceph_inode_info {scalar_t__ i_truncate_seq; scalar_t__ i_truncate_size; int /*<<< orphan*/  i_truncate_pending; scalar_t__ i_reported_size; } ;

/* Variables and functions */
 int CEPH_CAP_FILE_BUFFER ; 
 int CEPH_CAP_FILE_CACHE ; 
 int CEPH_CAP_FILE_EXCL ; 
 int CEPH_CAP_FILE_LAZYIO ; 
 int CEPH_CAP_FILE_RD ; 
 int CEPH_CAP_FILE_WR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct ceph_inode_info* FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11(struct inode *inode, int issued,
			u32 truncate_seq, u64 truncate_size, u64 size)
{
	struct ceph_inode_info *ci = FUNC5(inode);
	int queue_trunc = 0;

	if (FUNC6(truncate_seq, ci->i_truncate_seq) > 0 ||
	    (truncate_seq == ci->i_truncate_seq && size > inode->i_size)) {
		FUNC7("size %lld -> %llu\n", inode->i_size, size);
		if (size > 0 && FUNC0(inode->i_mode)) {
			FUNC10("fill_file_size non-zero size for directory\n");
			size = 0;
		}
		FUNC8(inode, size);
		inode->i_blocks = FUNC3(size);
		ci->i_reported_size = size;
		if (truncate_seq != ci->i_truncate_seq) {
			FUNC7("truncate_seq %u -> %u\n",
			     ci->i_truncate_seq, truncate_seq);
			ci->i_truncate_seq = truncate_seq;

			/* the MDS should have revoked these caps */
			FUNC1(issued & (CEPH_CAP_FILE_EXCL |
					       CEPH_CAP_FILE_RD |
					       CEPH_CAP_FILE_WR |
					       CEPH_CAP_FILE_LAZYIO));
			/*
			 * If we hold relevant caps, or in the case where we're
			 * not the only client referencing this file and we
			 * don't hold those caps, then we need to check whether
			 * the file is either opened or mmaped
			 */
			if ((issued & (CEPH_CAP_FILE_CACHE|
				       CEPH_CAP_FILE_BUFFER)) ||
			    FUNC9(inode->i_mapping) ||
			    FUNC2(ci)) {
				ci->i_truncate_pending++;
				queue_trunc = 1;
			}
		}
	}
	if (FUNC6(truncate_seq, ci->i_truncate_seq) >= 0 &&
	    ci->i_truncate_size != truncate_size) {
		FUNC7("truncate_size %lld -> %llu\n", ci->i_truncate_size,
		     truncate_size);
		ci->i_truncate_size = truncate_size;
	}

	if (queue_trunc)
		FUNC4(inode);

	return queue_trunc;
}