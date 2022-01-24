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
struct sbp_target_agent {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGENT_STATE_RESET ; 
 int RCODE_COMPLETE ; 
 int RCODE_TYPE_ERROR ; 
#define  TCODE_WRITE_QUADLET_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fw_card *card, int tcode, void *data,
		struct sbp_target_agent *agent)
{
	switch (tcode) {
	case TCODE_WRITE_QUADLET_REQUEST:
		FUNC0("tgt_agent AGENT_RESET\n");
		FUNC1(&agent->lock);
		agent->state = AGENT_STATE_RESET;
		FUNC2(&agent->lock);
		return RCODE_COMPLETE;

	default:
		return RCODE_TYPE_ERROR;
	}
}