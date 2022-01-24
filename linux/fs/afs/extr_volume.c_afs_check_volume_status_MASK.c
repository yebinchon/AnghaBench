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
typedef  scalar_t__ time64_t ;
struct key {int dummy; } ;
struct afs_volume {scalar_t__ update_at; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VOLUME_NEEDS_UPDATE ; 
 int /*<<< orphan*/  AFS_VOLUME_UPDATING ; 
 int /*<<< orphan*/  AFS_VOLUME_WAIT ; 
 int ERESTARTSYS ; 
 int ESTALE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct afs_volume*,struct key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(struct afs_volume *volume, struct key *key)
{
	time64_t now = FUNC4();
	int ret, retries = 0;

	FUNC0("");

	if (volume->update_at <= now)
		FUNC5(AFS_VOLUME_NEEDS_UPDATE, &volume->flags);

retry:
	if (!FUNC7(AFS_VOLUME_NEEDS_UPDATE, &volume->flags) &&
	    !FUNC7(AFS_VOLUME_WAIT, &volume->flags)) {
		FUNC1(" = 0");
		return 0;
	}

	if (!FUNC6(AFS_VOLUME_UPDATING, &volume->flags)) {
		ret = FUNC2(volume, key);
		FUNC3(AFS_VOLUME_WAIT, &volume->flags);
		FUNC3(AFS_VOLUME_UPDATING, &volume->flags);
		FUNC9(&volume->flags, AFS_VOLUME_WAIT);
		FUNC1(" = %d", ret);
		return ret;
	}

	if (!FUNC7(AFS_VOLUME_WAIT, &volume->flags)) {
		FUNC1(" = 0 [no wait]");
		return 0;
	}

	ret = FUNC8(&volume->flags, AFS_VOLUME_WAIT, TASK_INTERRUPTIBLE);
	if (ret == -ERESTARTSYS) {
		FUNC1(" = %d", ret);
		return ret;
	}

	retries++;
	if (retries == 4) {
		FUNC1(" = -ESTALE");
		return -ESTALE;
	}
	goto retry;
}