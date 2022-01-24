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
struct nvme_ctrl {TYPE_1__* opts; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_poll_queues; int /*<<< orphan*/  nr_write_queues; int /*<<< orphan*/  nr_io_queues; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static unsigned int FUNC2(struct nvme_ctrl *ctrl)
{
	unsigned int nr_io_queues;

	nr_io_queues = FUNC0(ctrl->opts->nr_io_queues, FUNC1());
	nr_io_queues += FUNC0(ctrl->opts->nr_write_queues, FUNC1());
	nr_io_queues += FUNC0(ctrl->opts->nr_poll_queues, FUNC1());

	return nr_io_queues;
}