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
struct fsg_lun {scalar_t__ state; scalar_t__ free_storage_on_release; int /*<<< orphan*/  fsg_num_buffers; int /*<<< orphan*/  buffhds; int /*<<< orphan*/  dev; struct fsg_lun** luns; int /*<<< orphan*/  thread_notifier; } ;
struct fsg_common {scalar_t__ state; scalar_t__ free_storage_on_release; int /*<<< orphan*/  fsg_num_buffers; int /*<<< orphan*/  buffhds; int /*<<< orphan*/  dev; struct fsg_common** luns; int /*<<< orphan*/  thread_notifier; } ;

/* Variables and functions */
 int FUNC0 (struct fsg_lun**) ; 
 int /*<<< orphan*/  FSG_STATE_EXIT ; 
 scalar_t__ FSG_STATE_TERMINATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fsg_lun*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsg_lun*) ; 
 int /*<<< orphan*/  FUNC6 (struct fsg_lun*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct fsg_common *common)
{
	int i;

	/* If the thread isn't already dead, tell it to exit now */
	if (common->state != FSG_STATE_TERMINATED) {
		FUNC6(common, FSG_STATE_EXIT);
		FUNC7(&common->thread_notifier);
	}

	for (i = 0; i < FUNC0(common->luns); ++i) {
		struct fsg_lun *lun = common->luns[i];
		if (!lun)
			continue;
		FUNC4(lun);
		if (FUNC2(&lun->dev))
			FUNC3(&lun->dev);
		FUNC5(lun);
	}

	FUNC1(common->buffhds, common->fsg_num_buffers);
	if (common->free_storage_on_release)
		FUNC5(common);
}