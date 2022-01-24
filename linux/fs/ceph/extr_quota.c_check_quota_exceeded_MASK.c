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
typedef  int u64 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ceph_snap_realm {int inode; struct ceph_snap_realm* parent; int /*<<< orphan*/  inodes_with_caps_lock; } ;
struct ceph_mds_client {int /*<<< orphan*/  snap_rwsem; } ;
struct ceph_inode_info {int i_max_files; int i_rfiles; int i_rsubdirs; int i_max_bytes; int i_rbytes; int /*<<< orphan*/  i_ceph_lock; struct ceph_snap_realm* i_snap_realm; } ;
typedef  int loff_t ;
typedef  enum quota_check_op { ____Placeholder_quota_check_op } quota_check_op ;
struct TYPE_2__ {struct ceph_mds_client* mdsc; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 scalar_t__ FUNC0 (struct inode*) ; 
#define  QUOTA_CHECK_MAX_BYTES_APPROACHING_OP 130 
#define  QUOTA_CHECK_MAX_BYTES_OP 129 
#define  QUOTA_CHECK_MAX_FILES_OP 128 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_client*,struct ceph_snap_realm*) ; 
 struct ceph_inode_info* FUNC3 (struct inode*) ; 
 TYPE_1__* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_client*,struct ceph_snap_realm*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC9 (int) ; 
 struct inode* FUNC10 (struct ceph_mds_client*,int /*<<< orphan*/ ,struct ceph_snap_realm*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC16(struct inode *inode, enum quota_check_op op,
				 loff_t delta)
{
	struct ceph_mds_client *mdsc = FUNC4(inode)->mdsc;
	struct ceph_inode_info *ci;
	struct ceph_snap_realm *realm, *next;
	struct inode *in;
	u64 max, rvalue;
	bool exceeded = false;

	if (FUNC6(inode) != CEPH_NOSNAP)
		return false;

	FUNC8(&mdsc->snap_rwsem);
restart:
	realm = FUNC3(inode)->i_snap_realm;
	if (realm)
		FUNC2(mdsc, realm);
	else
		FUNC11("check_quota_exceeded: ino (%llx.%llx) "
				   "null i_snap_realm\n", FUNC7(inode));
	while (realm) {
		bool has_inode;

		FUNC13(&realm->inodes_with_caps_lock);
		has_inode = realm->inode;
		in = has_inode ? FUNC9(realm->inode) : NULL;
		FUNC14(&realm->inodes_with_caps_lock);
		if (has_inode && !in)
			break;
		if (!in) {
			FUNC15(&mdsc->snap_rwsem);
			in = FUNC10(mdsc, inode->i_sb, realm);
			FUNC8(&mdsc->snap_rwsem);
			if (FUNC0(in))
				break;
			FUNC5(mdsc, realm);
			goto restart;
		}
		ci = FUNC3(in);
		FUNC13(&ci->i_ceph_lock);
		if (op == QUOTA_CHECK_MAX_FILES_OP) {
			max = ci->i_max_files;
			rvalue = ci->i_rfiles + ci->i_rsubdirs;
		} else {
			max = ci->i_max_bytes;
			rvalue = ci->i_rbytes;
		}
		FUNC14(&ci->i_ceph_lock);
		switch (op) {
		case QUOTA_CHECK_MAX_FILES_OP:
			exceeded = (max && (rvalue >= max));
			break;
		case QUOTA_CHECK_MAX_BYTES_OP:
			exceeded = (max && (rvalue + delta > max));
			break;
		case QUOTA_CHECK_MAX_BYTES_APPROACHING_OP:
			if (max) {
				if (rvalue >= max)
					exceeded = true;
				else {
					/*
					 * when we're writing more that 1/16th
					 * of the available space
					 */
					exceeded =
						(((max - rvalue) >> 4) < delta);
				}
			}
			break;
		default:
			/* Shouldn't happen */
			FUNC12("Invalid quota check op (%d)\n", op);
			exceeded = true; /* Just break the loop */
		}
		/* avoid calling iput_final() while holding mdsc->snap_rwsem */
		FUNC1(in);

		next = realm->parent;
		if (exceeded || !next)
			break;
		FUNC2(mdsc, next);
		FUNC5(mdsc, realm);
		realm = next;
	}
	if (realm)
		FUNC5(mdsc, realm);
	FUNC15(&mdsc->snap_rwsem);

	return exceeded;
}