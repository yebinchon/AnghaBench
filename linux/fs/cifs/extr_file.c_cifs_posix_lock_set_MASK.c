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
struct file_lock {int fl_flags; int /*<<< orphan*/  fl_blocker; int /*<<< orphan*/  fl_wait; } ;
struct file {int dummy; } ;
struct cifsInodeInfo {int /*<<< orphan*/  lock_sem; int /*<<< orphan*/  can_cache_brlcks; } ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int FILE_LOCK_DEFERRED ; 
 int FL_POSIX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file_lock*) ; 
 int FUNC4 (struct file*,struct file_lock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct file *file, struct file_lock *flock)
{
	struct cifsInodeInfo *cinode = FUNC0(FUNC2(file));
	int rc = 1;

	if ((flock->fl_flags & FL_POSIX) == 0)
		return rc;

try_again:
	FUNC1(&cinode->lock_sem);
	if (!cinode->can_cache_brlcks) {
		FUNC5(&cinode->lock_sem);
		return rc;
	}

	rc = FUNC4(file, flock, NULL);
	FUNC5(&cinode->lock_sem);
	if (rc == FILE_LOCK_DEFERRED) {
		rc = FUNC6(flock->fl_wait, !flock->fl_blocker);
		if (!rc)
			goto try_again;
		FUNC3(flock);
	}
	return rc;
}