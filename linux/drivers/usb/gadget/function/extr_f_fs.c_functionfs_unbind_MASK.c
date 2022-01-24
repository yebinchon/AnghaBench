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
struct ffs_data {int /*<<< orphan*/  flags; TYPE_1__* gadget; int /*<<< orphan*/ * ep0req; } ;
struct TYPE_2__ {int /*<<< orphan*/  ep0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FFS_FL_BOUND ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ffs_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ffs_data *ffs)
{
	FUNC0();

	if (!FUNC1(!ffs->gadget)) {
		FUNC4(ffs->gadget->ep0, ffs->ep0req);
		ffs->ep0req = NULL;
		ffs->gadget = NULL;
		FUNC2(FFS_FL_BOUND, &ffs->flags);
		FUNC3(ffs);
	}
}