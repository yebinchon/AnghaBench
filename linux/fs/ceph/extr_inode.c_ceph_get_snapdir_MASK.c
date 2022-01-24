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
struct inode {int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct ceph_vino {int /*<<< orphan*/  snap; int /*<<< orphan*/  ino; } ;
struct ceph_inode_info {scalar_t__ i_rbytes; int /*<<< orphan*/  i_snap_caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CEPH_CAP_PIN ; 
 int /*<<< orphan*/  CEPH_SNAPDIR ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,struct ceph_vino) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct ceph_inode_info* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  ceph_snapdir_fops ; 
 int /*<<< orphan*/  ceph_snapdir_iops ; 

struct inode *FUNC6(struct inode *parent)
{
	struct ceph_vino vino = {
		.ino = FUNC4(parent),
		.snap = CEPH_SNAPDIR,
	};
	struct inode *inode = FUNC3(parent->i_sb, vino);
	struct ceph_inode_info *ci = FUNC5(inode);

	FUNC0(!FUNC2(parent->i_mode));
	if (FUNC1(inode))
		return inode;
	inode->i_mode = parent->i_mode;
	inode->i_uid = parent->i_uid;
	inode->i_gid = parent->i_gid;
	inode->i_op = &ceph_snapdir_iops;
	inode->i_fop = &ceph_snapdir_fops;
	ci->i_snap_caps = CEPH_CAP_PIN; /* so we can open */
	ci->i_rbytes = 0;
	return inode;
}