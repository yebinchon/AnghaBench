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
struct TYPE_2__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {TYPE_1__ i_mtime; int /*<<< orphan*/  i_mode; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_vino; scalar_t__ fscache; int /*<<< orphan*/  i_version; } ;
struct ceph_fs_client {int /*<<< orphan*/  fscache; } ;
struct ceph_aux_inode {int /*<<< orphan*/  mtime_nsec; int /*<<< orphan*/  mtime_sec; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  aux ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_CHILD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ceph_fscache_inode_object_def ; 
 struct ceph_inode_info* FUNC1 (struct inode*) ; 
 struct ceph_fs_client* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct ceph_aux_inode*,int,struct ceph_inode_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_aux_inode*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct inode *inode)
{
	struct ceph_inode_info *ci = FUNC1(inode);
	struct ceph_fs_client *fsc = FUNC2(inode);
	struct ceph_aux_inode aux;

	/* No caching for filesystem */
	if (!fsc->fscache)
		return;

	/* Only cache for regular files that are read only */
	if (!FUNC0(inode->i_mode))
		return;

	FUNC5(inode, I_MUTEX_CHILD);
	if (!ci->fscache) {
		FUNC7(&aux, 0, sizeof(aux));
		aux.version = ci->i_version;
		aux.mtime_sec = inode->i_mtime.tv_sec;
		aux.mtime_nsec = inode->i_mtime.tv_nsec;
		ci->fscache = FUNC3(fsc->fscache,
						     &ceph_fscache_inode_object_def,
						     &ci->i_vino, sizeof(ci->i_vino),
						     &aux, sizeof(aux),
						     ci, FUNC4(inode), false);
	}
	FUNC6(inode);
}