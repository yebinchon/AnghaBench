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
struct path {struct vfsmount* mnt; struct dentry* dentry; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int /*<<< orphan*/  type; } ;
struct autofs_info {int /*<<< orphan*/  last_used; } ;

/* Variables and functions */
 unsigned int AUTOFS_EXP_FORCED ; 
 struct autofs_info* FUNC0 (struct dentry*) ; 
 struct autofs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct path*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC6 (struct path*) ; 
 int /*<<< orphan*/  FUNC7 (struct path*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int FUNC9(struct vfsmount *mnt,
			     struct dentry *dentry, unsigned int how)
{
	struct dentry *top = dentry;
	struct path path = {.mnt = mnt, .dentry = dentry};
	int status = 1;

	FUNC8("dentry %p %pd\n", dentry, dentry);

	FUNC6(&path);

	if (!FUNC3(&path))
		goto done;

	if (FUNC4(path.dentry)) {
		struct autofs_sb_info *sbi = FUNC1(path.dentry->d_sb);

		/* This is an autofs submount, we can't expire it */
		if (FUNC2(sbi->type))
			goto done;
	}

	/* Not a submount, has a forced expire been requested */
	if (how & AUTOFS_EXP_FORCED) {
		status = 0;
		goto done;
	}

	/* Update the expiry counter if fs is busy */
	if (!FUNC5(path.mnt)) {
		struct autofs_info *ino;

		ino = FUNC0(top);
		ino->last_used = jiffies;
		goto done;
	}

	status = 0;
done:
	FUNC8("returning = %d\n", status);
	FUNC7(&path);
	return status;
}