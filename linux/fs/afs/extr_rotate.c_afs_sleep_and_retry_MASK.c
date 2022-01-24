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
struct afs_fs_cursor {int flags; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int AFS_FS_CURSOR_INTR ; 
 int /*<<< orphan*/  ERESTARTSYS ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct afs_fs_cursor *fc)
{
	if (fc->flags & AFS_FS_CURSOR_INTR) {
		FUNC1(1000);
		if (FUNC2(current)) {
			fc->error = -ERESTARTSYS;
			return false;
		}
	} else {
		FUNC0(1000);
	}

	return true;
}