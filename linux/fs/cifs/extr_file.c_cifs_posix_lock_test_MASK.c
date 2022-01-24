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
struct file_lock {unsigned char fl_type; int fl_flags; } ;
struct file {int dummy; } ;
struct cifsInodeInfo {int /*<<< orphan*/  lock_sem; int /*<<< orphan*/  can_cache_brlcks; } ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int FL_POSIX ; 
 unsigned char F_UNLCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct file *file, struct file_lock *flock)
{
	int rc = 0;
	struct cifsInodeInfo *cinode = FUNC0(FUNC2(file));
	unsigned char saved_type = flock->fl_type;

	if ((flock->fl_flags & FL_POSIX) == 0)
		return 1;

	FUNC1(&cinode->lock_sem);
	FUNC3(file, flock);

	if (flock->fl_type == F_UNLCK && !cinode->can_cache_brlcks) {
		flock->fl_type = saved_type;
		rc = 1;
	}

	FUNC4(&cinode->lock_sem);
	return rc;
}