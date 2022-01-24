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
typedef  int u8 ;
struct inode {int dummy; } ;
struct file_lock {int fl_flags; int fl_type; int fl_file; } ;
struct file {int dummy; } ;
struct ceph_inode_info {int i_ceph_flags; int /*<<< orphan*/  i_ceph_lock; } ;

/* Variables and functions */
 int CEPH_I_ERROR_FILELOCK ; 
 int CEPH_LOCK_EXCL ; 
 int /*<<< orphan*/  CEPH_LOCK_FLOCK ; 
 int CEPH_LOCK_SHARED ; 
 int CEPH_LOCK_UNLOCK ; 
 int /*<<< orphan*/  CEPH_MDS_OP_SETFILELOCK ; 
 int EIO ; 
 int ENOLCK ; 
 int EOPNOTSUPP ; 
 int FL_FLOCK ; 
 int F_RDLCK ; 
 int F_UNLCK ; 
 int F_WRLCK ; 
 scalar_t__ FUNC0 (int) ; 
 int LOCK_MAND ; 
 struct ceph_inode_info* FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,int,int,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct inode* FUNC4 (struct file*) ; 
 int FUNC5 (struct file*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct file *file, int cmd, struct file_lock *fl)
{
	struct inode *inode = FUNC4(file);
	struct ceph_inode_info *ci = FUNC1(inode);
	int err = 0;
	u8 wait = 0;
	u8 lock_cmd;

	if (!(fl->fl_flags & FL_FLOCK))
		return -ENOLCK;
	/* No mandatory locks */
	if (fl->fl_type & LOCK_MAND)
		return -EOPNOTSUPP;

	FUNC3("ceph_flock, fl_file: %p\n", fl->fl_file);

	FUNC6(&ci->i_ceph_lock);
	if (ci->i_ceph_flags & CEPH_I_ERROR_FILELOCK) {
		err = -EIO;
	}
	FUNC7(&ci->i_ceph_lock);
	if (err < 0) {
		if (F_UNLCK == fl->fl_type)
			FUNC5(file, fl);
		return err;
	}

	if (FUNC0(cmd))
		wait = 1;

	if (F_RDLCK == fl->fl_type)
		lock_cmd = CEPH_LOCK_SHARED;
	else if (F_WRLCK == fl->fl_type)
		lock_cmd = CEPH_LOCK_EXCL;
	else
		lock_cmd = CEPH_LOCK_UNLOCK;

	err = FUNC2(CEPH_LOCK_FLOCK, CEPH_MDS_OP_SETFILELOCK,
				inode, lock_cmd, wait, fl);
	if (!err) {
		err = FUNC5(file, fl);
		if (err) {
			FUNC2(CEPH_LOCK_FLOCK,
					  CEPH_MDS_OP_SETFILELOCK,
					  inode, CEPH_LOCK_UNLOCK, 0, fl);
			FUNC3("got %d on locks_lock_file_wait, undid lock\n", err);
		}
	}
	return err;
}