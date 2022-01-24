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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct inode {int dummy; } ;
struct file_lock {int fl_flags; scalar_t__ fl_type; int fl_owner; } ;
struct file {TYPE_1__* f_mapping; } ;
struct ceph_inode_info {int i_ceph_flags; int /*<<< orphan*/  i_ceph_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int CEPH_I_ERROR_FILELOCK ; 
 int CEPH_LOCK_EXCL ; 
 int /*<<< orphan*/  CEPH_LOCK_FCNTL ; 
 int CEPH_LOCK_SHARED ; 
 int CEPH_LOCK_UNLOCK ; 
 scalar_t__ CEPH_MDS_OP_GETFILELOCK ; 
 scalar_t__ CEPH_MDS_OP_SETFILELOCK ; 
 int EIO ; 
 int ENOLCK ; 
 int FL_POSIX ; 
 scalar_t__ F_RDLCK ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ F_WRLCK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ceph_inode_info* FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,struct inode*,int,int,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct inode* FUNC6 (struct file*) ; 
 int FUNC7 (struct file*,struct file_lock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct file *file, int cmd, struct file_lock *fl)
{
	struct inode *inode = FUNC6(file);
	struct ceph_inode_info *ci = FUNC3(inode);
	int err = 0;
	u16 op = CEPH_MDS_OP_SETFILELOCK;
	u8 wait = 0;
	u8 lock_cmd;

	if (!(fl->fl_flags & FL_POSIX))
		return -ENOLCK;
	/* No mandatory locks */
	if (FUNC2(file->f_mapping->host) && fl->fl_type != F_UNLCK)
		return -ENOLCK;

	FUNC5("ceph_lock, fl_owner: %p\n", fl->fl_owner);

	/* set wait bit as appropriate, then make command as Ceph expects it*/
	if (FUNC0(cmd))
		op = CEPH_MDS_OP_GETFILELOCK;
	else if (FUNC1(cmd))
		wait = 1;

	FUNC8(&ci->i_ceph_lock);
	if (ci->i_ceph_flags & CEPH_I_ERROR_FILELOCK) {
		err = -EIO;
	}
	FUNC9(&ci->i_ceph_lock);
	if (err < 0) {
		if (op == CEPH_MDS_OP_SETFILELOCK && F_UNLCK == fl->fl_type)
			FUNC7(file, fl, NULL);
		return err;
	}

	if (F_RDLCK == fl->fl_type)
		lock_cmd = CEPH_LOCK_SHARED;
	else if (F_WRLCK == fl->fl_type)
		lock_cmd = CEPH_LOCK_EXCL;
	else
		lock_cmd = CEPH_LOCK_UNLOCK;

	err = FUNC4(CEPH_LOCK_FCNTL, op, inode, lock_cmd, wait, fl);
	if (!err) {
		if (op == CEPH_MDS_OP_SETFILELOCK) {
			FUNC5("mds locked, locking locally\n");
			err = FUNC7(file, fl, NULL);
			if (err) {
				/* undo! This should only happen if
				 * the kernel detects local
				 * deadlock. */
				FUNC4(CEPH_LOCK_FCNTL, op, inode,
						  CEPH_LOCK_UNLOCK, 0, fl);
				FUNC5("got %d on posix_lock_file, undid lock\n",
				     err);
			}
		}
	}
	return err;
}