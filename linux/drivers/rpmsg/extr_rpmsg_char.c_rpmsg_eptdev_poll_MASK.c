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
struct rpmsg_eptdev {int /*<<< orphan*/  ept; int /*<<< orphan*/  queue; int /*<<< orphan*/  readq; } ;
struct file {struct rpmsg_eptdev* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *filp, poll_table *wait)
{
	struct rpmsg_eptdev *eptdev = filp->private_data;
	__poll_t mask = 0;

	if (!eptdev->ept)
		return EPOLLERR;

	FUNC0(filp, &eptdev->readq, wait);

	if (!FUNC2(&eptdev->queue))
		mask |= EPOLLIN | EPOLLRDNORM;

	mask |= FUNC1(eptdev->ept, filp, wait);

	return mask;
}