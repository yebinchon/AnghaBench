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
struct bnx2fc_interface {int /*<<< orphan*/  timer_work_queue; } ;
struct bnx2fc_cmd {int /*<<< orphan*/  refcount; int /*<<< orphan*/  timeout_work; TYPE_1__* port; } ;
struct TYPE_2__ {struct bnx2fc_interface* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct bnx2fc_cmd *io_req,
			  unsigned int timer_msec)
{
	struct bnx2fc_interface *interface = io_req->port->priv;

	if (FUNC2(interface->timer_work_queue,
			       &io_req->timeout_work,
			       FUNC1(timer_msec)))
		FUNC0(&io_req->refcount);
}