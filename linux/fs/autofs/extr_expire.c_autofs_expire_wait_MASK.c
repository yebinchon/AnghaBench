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
struct path {struct dentry* dentry; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int /*<<< orphan*/  fs_lock; } ;
struct autofs_info {int flags; int /*<<< orphan*/  expire_complete; } ;

/* Variables and functions */
 int AUTOFS_INF_EXPIRING ; 
 int AUTOFS_INF_WANT_EXPIRE ; 
 int EAGAIN ; 
 int ECHILD ; 
 int HZ ; 
 int /*<<< orphan*/  NFY_NONE ; 
 struct autofs_info* FUNC0 (struct dentry*) ; 
 struct autofs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct autofs_sb_info*,struct path const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(const struct path *path, int rcu_walk)
{
	struct dentry *dentry = path->dentry;
	struct autofs_sb_info *sbi = FUNC1(dentry->d_sb);
	struct autofs_info *ino = FUNC0(dentry);
	int status;
	int state;

	/* Block on any pending expire */
	if (!(ino->flags & AUTOFS_INF_WANT_EXPIRE))
		return 0;
	if (rcu_walk)
		return -ECHILD;

retry:
	FUNC6(&sbi->fs_lock);
	state = ino->flags & (AUTOFS_INF_WANT_EXPIRE | AUTOFS_INF_EXPIRING);
	if (state == AUTOFS_INF_WANT_EXPIRE) {
		FUNC7(&sbi->fs_lock);
		/*
		 * Possibly being selected for expire, wait until
		 * it's selected or not.
		 */
		FUNC5(HZ/10);
		goto retry;
	}
	if (state & AUTOFS_INF_EXPIRING) {
		FUNC7(&sbi->fs_lock);

		FUNC4("waiting for expire %p name=%pd\n", dentry, dentry);

		status = FUNC2(sbi, path, NFY_NONE);
		FUNC8(&ino->expire_complete);

		FUNC4("expire done status=%d\n", status);

		if (FUNC3(dentry))
			return -EAGAIN;

		return status;
	}
	FUNC7(&sbi->fs_lock);

	return 0;
}