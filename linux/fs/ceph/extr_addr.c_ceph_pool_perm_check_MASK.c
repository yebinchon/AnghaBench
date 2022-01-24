#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct ceph_string {int dummy; } ;
struct TYPE_4__ {scalar_t__ pool_id; int /*<<< orphan*/  pool_ns; } ;
struct TYPE_3__ {scalar_t__ snap; } ;
struct ceph_inode_info {int i_ceph_flags; int /*<<< orphan*/  i_ceph_lock; TYPE_2__ i_layout; TYPE_1__ i_vino; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int CEPH_CAP_FILE_RD ; 
 int CEPH_CAP_FILE_WR ; 
 int CEPH_I_POOL_PERM ; 
 int CEPH_I_POOL_RD ; 
 int CEPH_I_POOL_WR ; 
 scalar_t__ CEPH_NOSNAP ; 
 int EPERM ; 
 int /*<<< orphan*/  NOPOOLPERM ; 
 int POOL_READ ; 
 int POOL_WRITE ; 
 int FUNC0 (struct ceph_inode_info*,scalar_t__,struct ceph_string*) ; 
 struct ceph_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_string*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ceph_string* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 struct ceph_string* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct inode *inode, int need)
{
	struct ceph_inode_info *ci = FUNC1(inode);
	struct ceph_string *pool_ns;
	s64 pool;
	int ret, flags;

	if (ci->i_vino.snap != CEPH_NOSNAP) {
		/*
		 * Pool permission check needs to write to the first object.
		 * But for snapshot, head of the first object may have alread
		 * been deleted. Skip check to avoid creating orphan object.
		 */
		return 0;
	}

	if (FUNC4(FUNC2(inode),
				NOPOOLPERM))
		return 0;

	FUNC8(&ci->i_ceph_lock);
	flags = ci->i_ceph_flags;
	pool = ci->i_layout.pool_id;
	FUNC9(&ci->i_ceph_lock);
check:
	if (flags & CEPH_I_POOL_PERM) {
		if ((need & CEPH_CAP_FILE_RD) && !(flags & CEPH_I_POOL_RD)) {
			FUNC6("ceph_pool_perm_check pool %lld no read perm\n",
			     pool);
			return -EPERM;
		}
		if ((need & CEPH_CAP_FILE_WR) && !(flags & CEPH_I_POOL_WR)) {
			FUNC6("ceph_pool_perm_check pool %lld no write perm\n",
			     pool);
			return -EPERM;
		}
		return 0;
	}

	pool_ns = FUNC5(ci->i_layout.pool_ns);
	ret = FUNC0(ci, pool, pool_ns);
	FUNC3(pool_ns);
	if (ret < 0)
		return ret;

	flags = CEPH_I_POOL_PERM;
	if (ret & POOL_READ)
		flags |= CEPH_I_POOL_RD;
	if (ret & POOL_WRITE)
		flags |= CEPH_I_POOL_WR;

	FUNC8(&ci->i_ceph_lock);
	if (pool == ci->i_layout.pool_id &&
	    pool_ns == FUNC7(ci->i_layout.pool_ns)) {
		ci->i_ceph_flags |= flags;
        } else {
		pool = ci->i_layout.pool_id;
		flags = ci->i_ceph_flags;
	}
	FUNC9(&ci->i_ceph_lock);
	goto check;
}