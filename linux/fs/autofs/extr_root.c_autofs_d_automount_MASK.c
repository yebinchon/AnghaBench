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
struct path {struct dentry* dentry; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int version; int /*<<< orphan*/  fs_lock; } ;
struct autofs_info {int flags; } ;

/* Variables and functions */
 int AUTOFS_INF_PENDING ; 
 int EAGAIN ; 
 int ENOENT ; 
 struct vfsmount* FUNC0 (int) ; 
 struct autofs_info* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct path*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC3 (struct path*) ; 
 scalar_t__ FUNC4 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int FUNC8 (struct path*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct path*) ; 
 int /*<<< orphan*/  FUNC10 (struct path*) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vfsmount *FUNC15(struct path *path)
{
	struct dentry *dentry = path->dentry;
	struct autofs_sb_info *sbi = FUNC5(dentry->d_sb);
	struct autofs_info *ino = FUNC1(dentry);
	int status;

	FUNC11("dentry=%p %pd\n", dentry, dentry);

	/* The daemon never triggers a mount. */
	if (FUNC4(sbi))
		return NULL;

	/*
	 * If an expire request is pending everyone must wait.
	 * If the expire fails we're still mounted so continue
	 * the follow and return. A return of -EAGAIN (which only
	 * happens with indirect mounts) means the expire completed
	 * and the directory was removed, so just go ahead and try
	 * the mount.
	 */
	status = FUNC8(path, 0);
	if (status && status != -EAGAIN)
		return NULL;

	/* Callback to the daemon to perform the mount or wait */
	FUNC13(&sbi->fs_lock);
	if (ino->flags & AUTOFS_INF_PENDING) {
		FUNC14(&sbi->fs_lock);
		status = FUNC2(path, 0);
		if (status)
			return FUNC0(status);
		goto done;
	}

	/*
	 * If the dentry is a symlink it's equivalent to a directory
	 * having path_is_mountpoint() true, so there's no need to call
	 * back to the daemon.
	 */
	if (FUNC7(dentry) && FUNC6(dentry)) {
		FUNC14(&sbi->fs_lock);
		goto done;
	}

	if (!FUNC10(path)) {
		/*
		 * It's possible that user space hasn't removed directories
		 * after umounting a rootless multi-mount, although it
		 * should. For v5 path_has_submounts() is sufficient to
		 * handle this because the leaves of the directory tree under
		 * the mount never trigger mounts themselves (they have an
		 * autofs trigger mount mounted on them). But v4 pseudo direct
		 * mounts do need the leaves to trigger mounts. In this case
		 * we have no choice but to use the list_empty() check and
		 * require user space behave.
		 */
		if (sbi->version > 4) {
			if (FUNC9(path)) {
				FUNC14(&sbi->fs_lock);
				goto done;
			}
		} else {
			if (!FUNC12(dentry)) {
				FUNC14(&sbi->fs_lock);
				goto done;
			}
		}
		ino->flags |= AUTOFS_INF_PENDING;
		FUNC14(&sbi->fs_lock);
		status = FUNC2(path, 0);
		FUNC13(&sbi->fs_lock);
		ino->flags &= ~AUTOFS_INF_PENDING;
		if (status) {
			FUNC14(&sbi->fs_lock);
			return FUNC0(status);
		}
	}
	FUNC14(&sbi->fs_lock);
done:
	/* Mount succeeded, check if we ended up with a new dentry */
	dentry = FUNC3(path);
	if (!dentry)
		return FUNC0(-ENOENT);

	return NULL;
}