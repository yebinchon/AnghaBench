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
struct TYPE_2__ {int can_stall; int /*<<< orphan*/  waitq; } ;
struct ffs_data {TYPE_1__ ev; int /*<<< orphan*/  ep0req_completion; int /*<<< orphan*/  wait; int /*<<< orphan*/  eps_lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; int /*<<< orphan*/  opened; int /*<<< orphan*/  ref; int /*<<< orphan*/  io_completion_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FFS_READ_DESCRIPTORS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ffs_data*) ; 
 struct ffs_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static struct ffs_data *FUNC11(const char *dev_name)
{
	struct ffs_data *ffs = FUNC6(sizeof *ffs, GFP_KERNEL);
	if (FUNC10(!ffs))
		return NULL;

	FUNC0();

	ffs->io_completion_wq = FUNC1("%s", 0, dev_name);
	if (!ffs->io_completion_wq) {
		FUNC5(ffs);
		return NULL;
	}

	FUNC8(&ffs->ref, 1);
	FUNC2(&ffs->opened, 0);
	ffs->state = FFS_READ_DESCRIPTORS;
	FUNC7(&ffs->mutex);
	FUNC9(&ffs->eps_lock);
	FUNC4(&ffs->ev.waitq);
	FUNC4(&ffs->wait);
	FUNC3(&ffs->ep0req_completion);

	/* XXX REVISIT need to update it in some places, or do we? */
	ffs->ev.can_stall = 1;

	return ffs;
}