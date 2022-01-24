#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct path {int /*<<< orphan*/  dentry; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct kstat {int size; int blksize; int nlink; int result_mask; scalar_t__ blocks; int /*<<< orphan*/  dev; TYPE_1__ btime; int /*<<< orphan*/  ino; } ;
struct inode {TYPE_3__* i_sb; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; } ;
struct ceph_inode_info {int i_rbytes; int i_files; int i_subdirs; TYPE_2__* i_snapid_map; TYPE_1__ i_btime; } ;
struct TYPE_7__ {int /*<<< orphan*/  s_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int AT_STATX_DONT_SYNC ; 
 unsigned int AT_STATX_FORCE_SYNC ; 
 scalar_t__ CEPH_NOSNAP ; 
 int /*<<< orphan*/  RBYTES ; 
 int STATX_BASIC_STATS ; 
 int STATX_BTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,unsigned int) ; 
 struct ceph_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(const struct path *path, struct kstat *stat,
		 u32 request_mask, unsigned int flags)
{
	struct inode *inode = FUNC7(path->dentry);
	struct ceph_inode_info *ci = FUNC2(inode);
	u32 valid_mask = STATX_BASIC_STATS;
	int err = 0;

	/* Skip the getattr altogether if we're asked not to sync */
	if (!(flags & AT_STATX_DONT_SYNC)) {
		err = FUNC1(inode, FUNC9(request_mask),
				      flags & AT_STATX_FORCE_SYNC);
		if (err)
			return err;
	}

	FUNC8(inode, stat);
	stat->ino = FUNC6(inode->i_sb, inode->i_ino);

	/*
	 * btime on newly-allocated inodes is 0, so if this is still set to
	 * that, then assume that it's not valid.
	 */
	if (ci->i_btime.tv_sec || ci->i_btime.tv_nsec) {
		stat->btime = ci->i_btime;
		valid_mask |= STATX_BTIME;
	}

	if (FUNC4(inode) == CEPH_NOSNAP)
		stat->dev = inode->i_sb->s_dev;
	else
		stat->dev = ci->i_snapid_map ? ci->i_snapid_map->dev : 0;

	if (FUNC0(inode->i_mode)) {
		if (FUNC5(FUNC3(inode->i_sb),
					RBYTES))
			stat->size = ci->i_rbytes;
		else
			stat->size = ci->i_files + ci->i_subdirs;
		stat->blocks = 0;
		stat->blksize = 65536;
		/*
		 * Some applications rely on the number of st_nlink
		 * value on directories to be either 0 (if unlinked)
		 * or 2 + number of subdirectories.
		 */
		if (stat->nlink == 1)
			/* '.' + '..' + subdirs */
			stat->nlink = 1 + 1 + ci->i_subdirs;
	}

	stat->result_mask = request_mask & valid_mask;
	return err;
}