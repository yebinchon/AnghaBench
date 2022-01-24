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
typedef  scalar_t__ u32 ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct ceph_inode_info {scalar_t__ i_rdcache_gen; scalar_t__ i_rdcache_revoking; int /*<<< orphan*/  i_truncate_mutex; int /*<<< orphan*/  i_ceph_lock; } ;
struct ceph_fs_client {int /*<<< orphan*/  mount_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CAP_FILE_CACHE ; 
 scalar_t__ CEPH_MOUNT_SHUTDOWN ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ceph_inode_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_inode_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct ceph_inode_info* FUNC4 (struct inode*) ; 
 struct ceph_fs_client* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct inode*,scalar_t__,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct inode *inode)
{
	struct ceph_inode_info *ci = FUNC4(inode);
	struct ceph_fs_client *fsc = FUNC5(inode);
	u32 orig_gen;
	int check = 0;

	FUNC9(&ci->i_truncate_mutex);

	if (FUNC0(fsc->mount_state) == CEPH_MOUNT_SHUTDOWN) {
		FUNC12("invalidate_pages %p %lld forced umount\n",
				    inode, FUNC3(inode));
		FUNC8(inode->i_mapping, -EIO);
		FUNC15(inode, 0);
		FUNC10(&ci->i_truncate_mutex);
		goto out;
	}

	FUNC13(&ci->i_ceph_lock);
	FUNC6("invalidate_pages %p gen %d revoking %d\n", inode,
	     ci->i_rdcache_gen, ci->i_rdcache_revoking);
	if (ci->i_rdcache_revoking != ci->i_rdcache_gen) {
		if (FUNC1(ci, NULL, CEPH_CAP_FILE_CACHE))
			check = 1;
		FUNC14(&ci->i_ceph_lock);
		FUNC10(&ci->i_truncate_mutex);
		goto out;
	}
	orig_gen = ci->i_rdcache_gen;
	FUNC14(&ci->i_ceph_lock);

	if (FUNC7(inode->i_mapping) < 0) {
		FUNC11("invalidate_pages %p fails\n", inode);
	}

	FUNC13(&ci->i_ceph_lock);
	if (orig_gen == ci->i_rdcache_gen &&
	    orig_gen == ci->i_rdcache_revoking) {
		FUNC6("invalidate_pages %p gen %d successful\n", inode,
		     ci->i_rdcache_gen);
		ci->i_rdcache_revoking--;
		check = 1;
	} else {
		FUNC6("invalidate_pages %p gen %d raced, now %d revoking %d\n",
		     inode, orig_gen, ci->i_rdcache_gen,
		     ci->i_rdcache_revoking);
		if (FUNC1(ci, NULL, CEPH_CAP_FILE_CACHE))
			check = 1;
	}
	FUNC14(&ci->i_ceph_lock);
	FUNC10(&ci->i_truncate_mutex);
out:
	if (check)
		FUNC2(ci, 0, NULL);
}