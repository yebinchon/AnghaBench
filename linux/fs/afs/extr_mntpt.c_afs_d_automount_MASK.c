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
struct vfsmount {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct vfsmount*) ; 
 struct vfsmount* FUNC3 (int /*<<< orphan*/ ) ; 
 int afs_mntpt_expiry_timeout ; 
 int /*<<< orphan*/  afs_mntpt_expiry_timer ; 
 int /*<<< orphan*/  afs_vfsmounts ; 
 int /*<<< orphan*/  afs_wq ; 
 int /*<<< orphan*/  FUNC4 (struct vfsmount*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

struct vfsmount *FUNC7(struct path *path)
{
	struct vfsmount *newmnt;

	FUNC1("{%pd}", path->dentry);

	newmnt = FUNC3(path->dentry);
	if (FUNC0(newmnt))
		return newmnt;

	FUNC5(newmnt); /* prevent immediate expiration */
	FUNC4(newmnt, &afs_vfsmounts);
	FUNC6(afs_wq, &afs_mntpt_expiry_timer,
			   afs_mntpt_expiry_timeout * HZ);
	FUNC2(" = %p", newmnt);
	return newmnt;
}