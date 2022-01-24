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
struct sbp_target_agent {int state; int /*<<< orphan*/  lock; } ;
struct fw_card {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int RCODE_COMPLETE ; 
 int RCODE_TYPE_ERROR ; 
#define  TCODE_READ_QUADLET_REQUEST 129 
#define  TCODE_WRITE_QUADLET_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fw_card *card, int tcode, void *data,
		struct sbp_target_agent *agent)
{
	int state;

	switch (tcode) {
	case TCODE_READ_QUADLET_REQUEST:
		FUNC1("tgt_agent AGENT_STATE READ\n");

		FUNC2(&agent->lock);
		state = agent->state;
		FUNC3(&agent->lock);

		*(__be32 *)data = FUNC0(state);

		return RCODE_COMPLETE;

	case TCODE_WRITE_QUADLET_REQUEST:
		/* ignored */
		return RCODE_COMPLETE;

	default:
		return RCODE_TYPE_ERROR;
	}
}