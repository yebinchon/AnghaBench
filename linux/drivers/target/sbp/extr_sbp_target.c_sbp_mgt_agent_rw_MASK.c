#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sbp_management_request {int generation; int node_addr; int /*<<< orphan*/  speed; int /*<<< orphan*/  card; } ;
struct TYPE_4__ {unsigned long long offset; } ;
struct sbp_management_agent {int state; int /*<<< orphan*/  orb_offset; int /*<<< orphan*/  work; struct sbp_management_request* request; int /*<<< orphan*/  lock; TYPE_2__ handler; TYPE_1__* tport; } ;
struct sbp2_pointer {int dummy; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MANAGEMENT_AGENT_STATE_BUSY ; 
 int RCODE_ADDRESS_ERROR ; 
 int RCODE_COMPLETE ; 
 int RCODE_CONFLICT_ERROR ; 
 int RCODE_TYPE_ERROR ; 
 int TCODE_READ_BLOCK_REQUEST ; 
 int TCODE_WRITE_BLOCK_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sbp2_pointer*) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_card*,struct fw_request*,int) ; 
 struct sbp_management_request* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sbp2_pointer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_unbound_wq ; 

__attribute__((used)) static void FUNC10(struct fw_card *card,
	struct fw_request *request, int tcode, int destination, int source,
	int generation, unsigned long long offset, void *data, size_t length,
	void *callback_data)
{
	struct sbp_management_agent *agent = callback_data;
	struct sbp2_pointer *ptr = data;
	int rcode = RCODE_ADDRESS_ERROR;

	if (!agent->tport->enable)
		goto out;

	if ((offset != agent->handler.offset) || (length != 8))
		goto out;

	if (tcode == TCODE_WRITE_BLOCK_REQUEST) {
		struct sbp_management_request *req;
		int prev_state;

		FUNC8(&agent->lock);
		prev_state = agent->state;
		agent->state = MANAGEMENT_AGENT_STATE_BUSY;
		FUNC9(&agent->lock);

		if (prev_state == MANAGEMENT_AGENT_STATE_BUSY) {
			FUNC5("ignoring management request while busy\n");
			rcode = RCODE_CONFLICT_ERROR;
			goto out;
		}
		req = FUNC4(sizeof(*req), GFP_ATOMIC);
		if (!req) {
			rcode = RCODE_CONFLICT_ERROR;
			goto out;
		}

		req->card = FUNC1(card);
		req->generation = generation;
		req->node_addr = source;
		req->speed = FUNC2(request);

		agent->orb_offset = FUNC7(ptr);
		agent->request = req;

		FUNC6(system_unbound_wq, &agent->work);
		rcode = RCODE_COMPLETE;
	} else if (tcode == TCODE_READ_BLOCK_REQUEST) {
		FUNC0(agent->orb_offset, ptr);
		rcode = RCODE_COMPLETE;
	} else {
		rcode = RCODE_TYPE_ERROR;
	}

out:
	FUNC3(card, request, rcode);
}