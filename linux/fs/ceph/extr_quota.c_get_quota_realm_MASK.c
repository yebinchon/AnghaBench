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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ceph_snap_realm {int inode; struct ceph_snap_realm* parent; int /*<<< orphan*/  inodes_with_caps_lock; } ;
struct ceph_mds_client {int /*<<< orphan*/  snap_rwsem; } ;
struct ceph_inode_info {struct ceph_snap_realm* i_snap_realm; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 int /*<<< orphan*/  EAGAIN ; 
 struct ceph_snap_realm* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_mds_client*,struct ceph_snap_realm*) ; 
 struct ceph_inode_info* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_mds_client*,struct ceph_snap_realm*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC10 (int) ; 
 struct inode* FUNC11 (struct ceph_mds_client*,int /*<<< orphan*/ ,struct ceph_snap_realm*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ceph_snap_realm *FUNC16(struct ceph_mds_client *mdsc,
					       struct inode *inode, bool retry)
{
	struct ceph_inode_info *ci = NULL;
	struct ceph_snap_realm *realm, *next;
	struct inode *in;
	bool has_quota;

	if (FUNC7(inode) != CEPH_NOSNAP)
		return NULL;

restart:
	realm = FUNC5(inode)->i_snap_realm;
	if (realm)
		FUNC4(mdsc, realm);
	else
		FUNC12("get_quota_realm: ino (%llx.%llx) "
				   "null i_snap_realm\n", FUNC8(inode));
	while (realm) {
		bool has_inode;

		FUNC13(&realm->inodes_with_caps_lock);
		has_inode = realm->inode;
		in = has_inode ? FUNC10(realm->inode) : NULL;
		FUNC14(&realm->inodes_with_caps_lock);
		if (has_inode && !in)
			break;
		if (!in) {
			FUNC15(&mdsc->snap_rwsem);
			in = FUNC11(mdsc, inode->i_sb, realm);
			FUNC9(&mdsc->snap_rwsem);
			if (FUNC1(in))
				break;
			FUNC6(mdsc, realm);
			if (!retry)
				return FUNC0(-EAGAIN);
			goto restart;
		}

		ci = FUNC5(in);
		has_quota = FUNC2(ci);
		/* avoid calling iput_final() while holding mdsc->snap_rwsem */
		FUNC3(in);

		next = realm->parent;
		if (has_quota || !next)
		       return realm;

		FUNC4(mdsc, next);
		FUNC6(mdsc, realm);
		realm = next;
	}
	if (realm)
		FUNC6(mdsc, realm);

	return NULL;
}