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
struct sbp_target_agent {int doorbell; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGENT_STATE_ACTIVE ; 
 int /*<<< orphan*/  AGENT_STATE_SUSPENDED ; 
 int RCODE_COMPLETE ; 
 int RCODE_CONFLICT_ERROR ; 
 int RCODE_TYPE_ERROR ; 
#define  TCODE_READ_QUADLET_REQUEST 129 
#define  TCODE_WRITE_QUADLET_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_unbound_wq ; 

__attribute__((used)) static int FUNC4(struct fw_card *card, int tcode, void *data,
		struct sbp_target_agent *agent)
{
	switch (tcode) {
	case TCODE_WRITE_QUADLET_REQUEST:
		FUNC2(&agent->lock);
		if (agent->state != AGENT_STATE_SUSPENDED) {
			FUNC3(&agent->lock);
			FUNC0("Ignoring DOORBELL while active.\n");
			return RCODE_CONFLICT_ERROR;
		}
		agent->state = AGENT_STATE_ACTIVE;
		FUNC3(&agent->lock);

		agent->doorbell = true;

		FUNC0("tgt_agent DOORBELL\n");

		FUNC1(system_unbound_wq, &agent->work);

		return RCODE_COMPLETE;

	case TCODE_READ_QUADLET_REQUEST:
		return RCODE_COMPLETE;

	default:
		return RCODE_TYPE_ERROR;
	}
}