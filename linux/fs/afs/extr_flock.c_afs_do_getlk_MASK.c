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
struct key {int dummy; } ;
struct file_lock {int /*<<< orphan*/  fl_type; scalar_t__ fl_pid; int /*<<< orphan*/  fl_end; scalar_t__ fl_start; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock_count; } ;
struct afs_vnode {scalar_t__ lock_state; TYPE_1__ status; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AFS_VNODE_LOCK_DELETED ; 
 int ENOENT ; 
 int /*<<< orphan*/  F_RDLCK ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  OFFSET_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct afs_vnode*,struct key*,int,int /*<<< orphan*/ *) ; 
 struct key* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*,struct file_lock*) ; 

__attribute__((used)) static int FUNC8(struct file *file, struct file_lock *fl)
{
	struct afs_vnode *vnode = FUNC0(FUNC6(file));
	struct key *key = FUNC5(file);
	int ret, lock_count;

	FUNC2("");

	if (vnode->lock_state == AFS_VNODE_LOCK_DELETED)
		return -ENOENT;

	fl->fl_type = F_UNLCK;

	/* check local lock records first */
	FUNC7(file, fl);
	if (fl->fl_type == F_UNLCK) {
		/* no local locks; consult the server */
		ret = FUNC4(vnode, key, false, NULL);
		if (ret < 0)
			goto error;

		lock_count = FUNC1(vnode->status.lock_count);
		if (lock_count != 0) {
			if (lock_count > 0)
				fl->fl_type = F_RDLCK;
			else
				fl->fl_type = F_WRLCK;
			fl->fl_start = 0;
			fl->fl_end = OFFSET_MAX;
			fl->fl_pid = 0;
		}
	}

	ret = 0;
error:
	FUNC3(" = %d [%hd]", ret, fl->fl_type);
	return ret;
}