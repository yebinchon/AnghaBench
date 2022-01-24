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
struct vhost_poll {int /*<<< orphan*/  wait; int /*<<< orphan*/  table; scalar_t__ wqh; } ;
struct file {int dummy; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPOLLERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vhost_poll*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct vhost_poll *poll, struct file *file)
{
	__poll_t mask;

	if (poll->wqh)
		return 0;

	mask = FUNC1(file, &poll->table);
	if (mask)
		FUNC3(&poll->wait, 0, 0, FUNC0(mask));
	if (mask & EPOLLERR) {
		FUNC2(poll);
		return -EINVAL;
	}

	return 0;
}