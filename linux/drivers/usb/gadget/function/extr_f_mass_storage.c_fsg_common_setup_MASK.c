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
struct fsg_common {int free_storage_on_release; int /*<<< orphan*/  luns; int /*<<< orphan*/  state; int /*<<< orphan*/  fsg_wait; int /*<<< orphan*/  io_wait; int /*<<< orphan*/  thread_notifier; int /*<<< orphan*/  lock; int /*<<< orphan*/  filesem; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct fsg_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSG_STATE_TERMINATED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fsg_common* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fsg_common *FUNC7(struct fsg_common *common)
{
	if (!common) {
		common = FUNC4(sizeof(*common), GFP_KERNEL);
		if (!common)
			return FUNC0(-ENOMEM);
		common->free_storage_on_release = 1;
	} else {
		common->free_storage_on_release = 0;
	}
	FUNC2(&common->filesem);
	FUNC6(&common->lock);
	FUNC1(&common->thread_notifier);
	FUNC3(&common->io_wait);
	FUNC3(&common->fsg_wait);
	common->state = FSG_STATE_TERMINATED;
	FUNC5(common->luns, 0, sizeof(common->luns));

	return common;
}