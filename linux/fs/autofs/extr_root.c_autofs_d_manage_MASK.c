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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  d_subdirs; int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int /*<<< orphan*/  fs_lock; } ;
struct autofs_info {int flags; } ;

/* Variables and functions */
 int AUTOFS_INF_EXPIRING ; 
 int AUTOFS_INF_WANT_EXPIRE ; 
 int ECHILD ; 
 int EISDIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct autofs_info* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct path const*,int) ; 
 scalar_t__ FUNC3 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC4 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int FUNC8 (struct path const*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct path const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(const struct path *path, bool rcu_walk)
{
	struct dentry *dentry = path->dentry;
	struct autofs_sb_info *sbi = FUNC4(dentry->d_sb);
	struct autofs_info *ino = FUNC1(dentry);
	int status;

	FUNC11("dentry=%p %pd\n", dentry, dentry);

	/* The daemon never waits. */
	if (FUNC3(sbi)) {
		if (!FUNC10(path))
			return -EISDIR;
		return 0;
	}

	/* Wait for pending expires */
	if (FUNC8(path, rcu_walk) == -ECHILD)
		return -ECHILD;

	/*
	 * This dentry may be under construction so wait on mount
	 * completion.
	 */
	status = FUNC2(path, rcu_walk);
	if (status)
		return status;

	if (rcu_walk) {
		/* We don't need fs_lock in rcu_walk mode,
		 * just testing 'AUTOFS_INFO_NO_RCU' is enough.
		 * simple_empty() takes a spinlock, so leave it
		 * to last.
		 * We only return -EISDIR when certain this isn't
		 * a mount-trap.
		 */
		struct inode *inode;

		if (ino->flags & AUTOFS_INF_WANT_EXPIRE)
			return 0;
		if (FUNC10(path))
			return 0;
		inode = FUNC5(dentry);
		if (inode && FUNC0(inode->i_mode))
			return -EISDIR;
		if (FUNC9(&dentry->d_subdirs))
			return 0;
		if (!FUNC12(dentry))
			return -EISDIR;
		return 0;
	}

	FUNC13(&sbi->fs_lock);
	/*
	 * If the dentry has been selected for expire while we slept
	 * on the lock then it might go away. We'll deal with that in
	 * ->d_automount() and wait on a new mount if the expire
	 * succeeds or return here if it doesn't (since there's no
	 * mount to follow with a rootless multi-mount).
	 */
	if (!(ino->flags & AUTOFS_INF_EXPIRING)) {
		/*
		 * Any needed mounting has been completed and the path
		 * updated so check if this is a rootless multi-mount so
		 * we can avoid needless calls ->d_automount() and avoid
		 * an incorrect ELOOP error return.
		 */
		if ((!FUNC10(path) && !FUNC12(dentry)) ||
		    (FUNC7(dentry) && FUNC6(dentry)))
			status = -EISDIR;
	}
	FUNC14(&sbi->fs_lock);

	return status;
}