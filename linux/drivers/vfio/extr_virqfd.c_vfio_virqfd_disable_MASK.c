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
struct virqfd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vfio_irqfd_cleanup_wq ; 
 int /*<<< orphan*/  FUNC3 (struct virqfd*) ; 
 int /*<<< orphan*/  virqfd_lock ; 

void FUNC4(struct virqfd **pvirqfd)
{
	unsigned long flags;

	FUNC1(&virqfd_lock, flags);

	if (*pvirqfd) {
		FUNC3(*pvirqfd);
		*pvirqfd = NULL;
	}

	FUNC2(&virqfd_lock, flags);

	/*
	 * Block until we know all outstanding shutdown jobs have completed.
	 * Even if we don't queue the job, flush the wq to be sure it's
	 * been released.
	 */
	FUNC0(vfio_irqfd_cleanup_wq);
}