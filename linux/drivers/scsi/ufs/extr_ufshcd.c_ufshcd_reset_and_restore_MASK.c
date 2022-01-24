#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ufs_hba {TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int MAX_HOST_RESET_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC6(struct ufs_hba *hba)
{
	int err = 0;
	unsigned long flags;
	int retries = MAX_HOST_RESET_RETRIES;

	do {
		/* Reset the attached device */
		FUNC5(hba);

		err = FUNC2(hba);
	} while (err && --retries);

	/*
	 * After reset the door-bell might be cleared, complete
	 * outstanding requests in s/w here.
	 */
	FUNC0(hba->host->host_lock, flags);
	FUNC4(hba);
	FUNC3(hba);
	FUNC1(hba->host->host_lock, flags);

	return err;
}