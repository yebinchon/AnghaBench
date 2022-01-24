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
struct dentry {int /*<<< orphan*/  d_parent; } ;
struct TYPE_2__ {scalar_t__ snap; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_shared_gen; TYPE_1__ i_vino; } ;
struct ceph_dentry_info {scalar_t__ offset; scalar_t__ lease_shared_gen; } ;

/* Variables and functions */
 scalar_t__ CEPH_SNAPDIR ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_inode_info*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct ceph_dentry_info* FUNC4 (struct dentry*) ; 
 struct ceph_inode_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct dentry*,struct dentry*) ; 

__attribute__((used)) static void FUNC10(struct dentry *dentry)
{
	struct ceph_inode_info *dir_ci;
	struct ceph_dentry_info *di;

	FUNC9("ceph_d_prune %pd %p\n", dentry, dentry);

	/* do we have a valid parent? */
	if (FUNC0(dentry))
		return;

	/* we hold d_lock, so d_parent is stable */
	dir_ci = FUNC5(FUNC6(dentry->d_parent));
	if (dir_ci->i_vino.snap == CEPH_SNAPDIR)
		return;

	/* who calls d_delete() should also disable dcache readdir */
	if (FUNC7(dentry))
		return;

	/* d_fsdata does not get cleared until d_release */
	if (!FUNC8(dentry)) {
		FUNC1(dir_ci);
		return;
	}

	/* Disable dcache readdir just in case that someone called d_drop()
	 * or d_invalidate(), but MDS didn't revoke CEPH_CAP_FILE_SHARED
	 * properly (dcache readdir is still enabled) */
	di = FUNC4(dentry);
	if (di->offset > 0 &&
	    di->lease_shared_gen == FUNC3(&dir_ci->i_shared_gen))
		FUNC2(dir_ci);
}