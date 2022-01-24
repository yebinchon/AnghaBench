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
struct rio_mport {int pwe_refcnt; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pwenable ) (struct rio_mport*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_mport*,int) ; 

void FUNC3(struct rio_mport *mport, int enable)
{
	if (mport->ops->pwenable) {
		FUNC0(&mport->lock);

		if ((enable && ++mport->pwe_refcnt == 1) ||
		    (!enable && mport->pwe_refcnt && --mport->pwe_refcnt == 0))
			mport->ops->pwenable(mport, enable);
		FUNC1(&mport->lock);
	}
}