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
struct dentry {int dummy; } ;
struct ceph_dentry_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 scalar_t__ FUNC0 (struct ceph_dentry_info*) ; 
 scalar_t__ FUNC1 (struct dentry const*) ; 
 struct ceph_dentry_info* FUNC2 (struct dentry const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry const*) ; 
 scalar_t__ FUNC5 (struct dentry const*) ; 

__attribute__((used)) static int FUNC6(const struct dentry *dentry)
{
	struct ceph_dentry_info *di;

	/* won't release caps */
	if (FUNC5(dentry))
		return 0;
	if (FUNC3(FUNC4(dentry)) != CEPH_NOSNAP)
		return 0;
	/* vaild lease? */
	di = FUNC2(dentry);
	if (di) {
		if (FUNC0(di))
			return 0;
		if (FUNC1(dentry))
			return 0;
	}
	return 1;
}