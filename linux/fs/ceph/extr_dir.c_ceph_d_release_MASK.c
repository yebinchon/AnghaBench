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
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/ * d_fsdata; } ;
struct ceph_dentry_info {scalar_t__ lease_session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_dentry_info*) ; 
 struct ceph_dentry_info* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  ceph_dentry_cachep ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ceph_dentry_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct dentry *dentry)
{
	struct ceph_dentry_info *di = FUNC1(dentry);

	FUNC3("d_release %p\n", dentry);

	FUNC5(&dentry->d_lock);
	FUNC0(di);
	dentry->d_fsdata = NULL;
	FUNC6(&dentry->d_lock);

	if (di->lease_session)
		FUNC2(di->lease_session);
	FUNC4(ceph_dentry_cachep, di);
}