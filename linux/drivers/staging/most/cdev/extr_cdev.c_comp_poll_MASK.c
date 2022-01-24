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
struct file {struct comp_channel* private_data; } ;
struct comp_channel {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  fifo; int /*<<< orphan*/  dev; TYPE_1__* cfg; int /*<<< orphan*/  wq; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_2__ {scalar_t__ direction; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 scalar_t__ MOST_CH_RX ; 
 scalar_t__ FUNC0 (struct comp_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *filp, poll_table *wait)
{
	struct comp_channel *c = filp->private_data;
	__poll_t mask = 0;

	FUNC4(filp, &c->wq, wait);

	FUNC2(&c->io_mutex);
	if (c->cfg->direction == MOST_CH_RX) {
		if (!c->dev || !FUNC1(&c->fifo))
			mask |= EPOLLIN | EPOLLRDNORM;
	} else {
		if (!c->dev || !FUNC1(&c->fifo) || FUNC0(c))
			mask |= EPOLLOUT | EPOLLWRNORM;
	}
	FUNC3(&c->io_mutex);
	return mask;
}