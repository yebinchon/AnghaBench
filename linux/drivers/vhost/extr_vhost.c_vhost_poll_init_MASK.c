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
typedef  int /*<<< orphan*/  vhost_work_fn_t ;
struct vhost_poll {int /*<<< orphan*/  work; int /*<<< orphan*/ * wqh; struct vhost_dev* dev; int /*<<< orphan*/  mask; int /*<<< orphan*/  table; int /*<<< orphan*/  wait; } ;
struct vhost_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vhost_poll_func ; 
 int /*<<< orphan*/  vhost_poll_wakeup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct vhost_poll *poll, vhost_work_fn_t fn,
		     __poll_t mask, struct vhost_dev *dev)
{
	FUNC1(&poll->wait, vhost_poll_wakeup);
	FUNC0(&poll->table, vhost_poll_func);
	poll->mask = mask;
	poll->dev = dev;
	poll->wqh = NULL;

	FUNC2(&poll->work, fn);
}