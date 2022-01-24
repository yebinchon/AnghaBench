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
struct sbp_tport {int dummy; } ;
struct TYPE_2__ {int length; struct sbp_management_agent* callback_data; int /*<<< orphan*/  address_callback; } ;
struct sbp_management_agent {TYPE_1__ handler; int /*<<< orphan*/ * request; scalar_t__ orb_offset; int /*<<< orphan*/  work; int /*<<< orphan*/  state; struct sbp_tport* tport; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sbp_management_agent* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MANAGEMENT_AGENT_STATE_IDLE ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sbp_management_agent*) ; 
 struct sbp_management_agent* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbp_mgt_agent_process ; 
 int /*<<< orphan*/  sbp_mgt_agent_rw ; 
 int /*<<< orphan*/  sbp_register_region ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sbp_management_agent *FUNC6(
		struct sbp_tport *tport)
{
	int ret;
	struct sbp_management_agent *agent;

	agent = FUNC4(sizeof(*agent), GFP_KERNEL);
	if (!agent)
		return FUNC0(-ENOMEM);

	FUNC5(&agent->lock);
	agent->tport = tport;
	agent->handler.length = 0x08;
	agent->handler.address_callback = sbp_mgt_agent_rw;
	agent->handler.callback_data = agent;
	agent->state = MANAGEMENT_AGENT_STATE_IDLE;
	FUNC1(&agent->work, sbp_mgt_agent_process);
	agent->orb_offset = 0;
	agent->request = NULL;

	ret = FUNC2(&agent->handler,
			&sbp_register_region);
	if (ret < 0) {
		FUNC3(agent);
		return FUNC0(ret);
	}

	return agent;
}