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
struct qstr {int dummy; } ;
struct path {struct dentry* dentry; int /*<<< orphan*/  mnt; } ;
struct dentry {int /*<<< orphan*/  d_name; struct dentry* d_parent; } ;
struct autofs_wait_queue {int dummy; } ;
struct autofs_sb_info {int flags; int /*<<< orphan*/  wq_mutex; } ;
struct autofs_info {int flags; } ;
typedef  enum autofs_notify { ____Placeholder_autofs_notify } autofs_notify ;

/* Variables and functions */
 int AUTOFS_INF_EXPIRING ; 
 int AUTOFS_SBI_CATATONIC ; 
 int EINTR ; 
 int ENOENT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int NFY_MOUNT ; 
 int NFY_NONE ; 
 struct autofs_info* FUNC1 (struct dentry*) ; 
 struct autofs_wait_queue* FUNC2 (struct autofs_sb_info*,struct qstr const*) ; 
 struct dentry* FUNC3 (struct dentry*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct path*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct autofs_wait_queue **wait,
			    struct autofs_sb_info *sbi,
			    const struct qstr *qstr,
			    const struct path *path, enum autofs_notify notify)
{
	struct dentry *dentry = path->dentry;
	struct autofs_wait_queue *wq;
	struct autofs_info *ino;

	if (sbi->flags & AUTOFS_SBI_CATATONIC)
		return -ENOENT;

	/* Wait in progress, continue; */
	wq = FUNC2(sbi, qstr);
	if (wq) {
		*wait = wq;
		return 1;
	}

	*wait = NULL;

	/* If we don't yet have any info this is a new request */
	ino = FUNC1(dentry);
	if (!ino)
		return 1;

	/*
	 * If we've been asked to wait on an existing expire (NFY_NONE)
	 * but there is no wait in the queue ...
	 */
	if (notify == NFY_NONE) {
		/*
		 * Either we've betean the pending expire to post it's
		 * wait or it finished while we waited on the mutex.
		 * So we need to wait till either, the wait appears
		 * or the expire finishes.
		 */

		while (ino->flags & AUTOFS_INF_EXPIRING) {
			FUNC8(&sbi->wq_mutex);
			FUNC10(HZ/10);
			if (FUNC7(&sbi->wq_mutex))
				return -EINTR;

			if (sbi->flags & AUTOFS_SBI_CATATONIC)
				return -ENOENT;

			wq = FUNC2(sbi, qstr);
			if (wq) {
				*wait = wq;
				return 1;
			}
		}

		/*
		 * Not ideal but the status has already gone. Of the two
		 * cases where we wait on NFY_NONE neither depend on the
		 * return status of the wait.
		 */
		return 0;
	}

	/*
	 * If we've been asked to trigger a mount and the request
	 * completed while we waited on the mutex ...
	 */
	if (notify == NFY_MOUNT) {
		struct dentry *new = NULL;
		struct path this;
		int valid = 1;

		/*
		 * If the dentry was successfully mounted while we slept
		 * on the wait queue mutex we can return success. If it
		 * isn't mounted (doesn't have submounts for the case of
		 * a multi-mount with no mount at it's base) we can
		 * continue on and create a new request.
		 */
		if (!FUNC0(dentry)) {
			if (FUNC5(dentry) &&
			    FUNC4(dentry)) {
				struct dentry *parent = dentry->d_parent;

				new = FUNC3(parent, &dentry->d_name);
				if (new)
					dentry = new;
			}
		}
		this.mnt = path->mnt;
		this.dentry = dentry;
		if (FUNC9(&this))
			valid = 0;

		if (new)
			FUNC6(new);
		return valid;
	}

	return 1;
}