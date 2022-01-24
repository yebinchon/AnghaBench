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
struct sbp_target_agent {int doorbell; int /*<<< orphan*/  lock; int /*<<< orphan*/  orb_pointer; int /*<<< orphan*/  work; int /*<<< orphan*/  state; } ;
struct sbp2_pointer {int dummy; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGENT_STATE_ACTIVE ; 
 int /*<<< orphan*/  AGENT_STATE_RESET ; 
 int /*<<< orphan*/  AGENT_STATE_SUSPENDED ; 
 int RCODE_COMPLETE ; 
 int RCODE_CONFLICT_ERROR ; 
 int RCODE_TYPE_ERROR ; 
#define  TCODE_READ_BLOCK_REQUEST 129 
#define  TCODE_WRITE_BLOCK_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sbp2_pointer*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sbp2_pointer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_unbound_wq ; 

__attribute__((used)) static int FUNC7(struct fw_card *card, int tcode, void *data,
		struct sbp_target_agent *agent)
{
	struct sbp2_pointer *ptr = data;

	switch (tcode) {
	case TCODE_WRITE_BLOCK_REQUEST:
		FUNC5(&agent->lock);
		if (agent->state != AGENT_STATE_SUSPENDED &&
				agent->state != AGENT_STATE_RESET) {
			FUNC6(&agent->lock);
			FUNC2("Ignoring ORB_POINTER write while active.\n");
			return RCODE_CONFLICT_ERROR;
		}
		agent->state = AGENT_STATE_ACTIVE;
		FUNC6(&agent->lock);

		agent->orb_pointer = FUNC4(ptr);
		agent->doorbell = false;

		FUNC1("tgt_agent ORB_POINTER write: 0x%llx\n",
				agent->orb_pointer);

		FUNC3(system_unbound_wq, &agent->work);

		return RCODE_COMPLETE;

	case TCODE_READ_BLOCK_REQUEST:
		FUNC1("tgt_agent ORB_POINTER READ\n");
		FUNC5(&agent->lock);
		FUNC0(agent->orb_pointer, ptr);
		FUNC6(&agent->lock);
		return RCODE_COMPLETE;

	default:
		return RCODE_TYPE_ERROR;
	}
}