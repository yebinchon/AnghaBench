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
struct uic_command {int dummy; } ;
struct ufs_hba {int /*<<< orphan*/  uic_cmd_mutex; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int FUNC0 (struct ufs_hba*,struct uic_command*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ufs_hba*) ; 
 int FUNC8 (struct ufs_hba*,struct uic_command*) ; 

int FUNC9(struct ufs_hba *hba, struct uic_command *uic_cmd)
{
	int ret;
	unsigned long flags;

	FUNC6(hba, false);
	FUNC1(&hba->uic_cmd_mutex);
	FUNC5(hba);

	FUNC3(hba->host->host_lock, flags);
	ret = FUNC0(hba, uic_cmd, true);
	FUNC4(hba->host->host_lock, flags);
	if (!ret)
		ret = FUNC8(hba, uic_cmd);

	FUNC2(&hba->uic_cmd_mutex);

	FUNC7(hba);
	return ret;
}