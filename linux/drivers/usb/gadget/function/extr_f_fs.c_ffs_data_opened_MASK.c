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
struct ffs_data {scalar_t__ state; int /*<<< orphan*/  opened; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FFS_CLOSING ; 
 scalar_t__ FFS_DEACTIVATED ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ffs_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ffs_data *ffs)
{
	FUNC0();

	FUNC3(&ffs->ref);
	if (FUNC1(1, &ffs->opened) == 1 &&
			ffs->state == FFS_DEACTIVATED) {
		ffs->state = FFS_CLOSING;
		FUNC2(ffs);
	}
}