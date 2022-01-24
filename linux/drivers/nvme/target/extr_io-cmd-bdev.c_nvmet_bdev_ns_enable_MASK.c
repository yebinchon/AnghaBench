#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nvmet_ns {TYPE_1__* bdev; int /*<<< orphan*/  blksize_shift; int /*<<< orphan*/  size; int /*<<< orphan*/  device_path; } ;
struct TYPE_5__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int ENOTBLK ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct nvmet_ns *ns)
{
	int ret;

	ns->bdev = FUNC3(ns->device_path,
			FMODE_READ | FMODE_WRITE, NULL);
	if (FUNC0(ns->bdev)) {
		ret = FUNC1(ns->bdev);
		if (ret != -ENOTBLK) {
			FUNC6("failed to open block device %s: (%ld)\n",
					ns->device_path, FUNC1(ns->bdev));
		}
		ns->bdev = NULL;
		return ret;
	}
	ns->size = FUNC5(ns->bdev->bd_inode);
	ns->blksize_shift = FUNC4(FUNC2(ns->bdev));
	return 0;
}