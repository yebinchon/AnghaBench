#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rq_list_lock; } ;
struct TYPE_5__ {int done; } ;
typedef  TYPE_1__ Sg_request ;
typedef  TYPE_2__ Sg_fd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(Sg_fd *sfp, Sg_request *srp)
{
	unsigned long flags;
	int ret;

	FUNC0(&sfp->rq_list_lock, flags);
	ret = srp->done;
	FUNC1(&sfp->rq_list_lock, flags);
	return ret;
}