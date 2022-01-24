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
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;
struct switchtec_user {scalar_t__ event_cnt; TYPE_1__ comp; struct switchtec_dev* stdev; } ;
struct switchtec_dev {int /*<<< orphan*/  event_cnt; int /*<<< orphan*/  mrpc_mutex; int /*<<< orphan*/  event_wq; } ;
struct file {struct switchtec_user* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLPRI ; 
 int EPOLLRDBAND ; 
 int EPOLLRDHUP ; 
 int EPOLLRDNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct switchtec_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *filp, poll_table *wait)
{
	struct switchtec_user *stuser = filp->private_data;
	struct switchtec_dev *stdev = stuser->stdev;
	__poll_t ret = 0;

	FUNC3(filp, &stuser->comp.wait, wait);
	FUNC3(filp, &stdev->event_wq, wait);

	if (FUNC1(stdev))
		return EPOLLIN | EPOLLRDHUP | EPOLLOUT | EPOLLERR | EPOLLHUP;

	FUNC2(&stdev->mrpc_mutex);

	if (FUNC4(&stuser->comp))
		ret |= EPOLLIN | EPOLLRDNORM;

	if (stuser->event_cnt != FUNC0(&stdev->event_cnt))
		ret |= EPOLLPRI | EPOLLRDBAND;

	return ret;
}