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
struct file {struct dev_data* private_data; } ;
struct dev_data {scalar_t__ state; scalar_t__ ev_next; int /*<<< orphan*/  lock; scalar_t__ setup_can_stall; scalar_t__ setup_in; scalar_t__ setup_abort; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_POLLMASK ; 
 int /*<<< orphan*/  EPOLLHUP ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLLOUT ; 
 scalar_t__ STATE_DEV_OPENED ; 
 scalar_t__ STATE_DEV_SETUP ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t
FUNC3 (struct file *fd, poll_table *wait)
{
       struct dev_data         *dev = fd->private_data;
       __poll_t                mask = 0;

	if (dev->state <= STATE_DEV_OPENED)
		return DEFAULT_POLLMASK;

	FUNC0(fd, &dev->wait, wait);

	FUNC1(&dev->lock);

	/* report fd mode change before acting on it */
	if (dev->setup_abort) {
		dev->setup_abort = 0;
		mask = EPOLLHUP;
		goto out;
	}

	if (dev->state == STATE_DEV_SETUP) {
		if (dev->setup_in || dev->setup_can_stall)
			mask = EPOLLOUT;
	} else {
		if (dev->ev_next != 0)
			mask = EPOLLIN;
	}
out:
	FUNC2(&dev->lock);
	return mask;
}