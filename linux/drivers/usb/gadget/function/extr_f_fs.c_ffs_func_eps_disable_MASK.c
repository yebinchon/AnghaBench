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
struct ffs_function {TYPE_1__* ffs; struct ffs_ep* eps; } ;
struct ffs_epfile {int /*<<< orphan*/ * ep; } ;
struct ffs_ep {int /*<<< orphan*/  ep; } ;
struct TYPE_2__ {unsigned int eps_count; int /*<<< orphan*/  eps_lock; struct ffs_epfile* epfiles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ffs_epfile*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ffs_function *func)
{
	struct ffs_ep *ep         = func->eps;
	struct ffs_epfile *epfile = func->ffs->epfiles;
	unsigned count            = func->ffs->eps_count;
	unsigned long flags;

	FUNC2(&func->ffs->eps_lock, flags);
	while (count--) {
		/* pending requests get nuked */
		if (FUNC1(ep->ep))
			FUNC4(ep->ep);
		++ep;

		if (epfile) {
			epfile->ep = NULL;
			FUNC0(epfile);
			++epfile;
		}
	}
	FUNC3(&func->ffs->eps_lock, flags);
}