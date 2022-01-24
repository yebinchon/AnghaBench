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
struct virtproc_info {int /*<<< orphan*/  endpoints_lock; int /*<<< orphan*/  endpoints; } ;
struct rpmsg_endpoint {int /*<<< orphan*/  refcount; int /*<<< orphan*/  cb_lock; int /*<<< orphan*/ * cb; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ept_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct virtproc_info *vrp, struct rpmsg_endpoint *ept)
{
	/* make sure new inbound messages can't find this ept anymore */
	FUNC2(&vrp->endpoints_lock);
	FUNC0(&vrp->endpoints, ept->addr);
	FUNC3(&vrp->endpoints_lock);

	/* make sure in-flight inbound messages won't invoke cb anymore */
	FUNC2(&ept->cb_lock);
	ept->cb = NULL;
	FUNC3(&ept->cb_lock);

	FUNC1(&ept->refcount, __ept_release);
}