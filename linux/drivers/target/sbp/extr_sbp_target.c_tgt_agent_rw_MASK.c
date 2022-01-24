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
struct TYPE_4__ {scalar_t__ offset; } ;
struct sbp_target_agent {TYPE_2__ handler; TYPE_1__* login; } ;
struct sbp_session {int generation; int node_id; int /*<<< orphan*/  lock; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;
struct TYPE_3__ {struct sbp_session* sess; } ;

/* Variables and functions */
 int RCODE_ADDRESS_ERROR ; 
 int RCODE_TYPE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct fw_card*,struct fw_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct fw_card*,int,void*,struct sbp_target_agent*) ; 
 int FUNC5 (struct fw_card*,int,void*,struct sbp_target_agent*) ; 
 int FUNC6 (struct fw_card*,int,void*,struct sbp_target_agent*) ; 
 int FUNC7 (struct fw_card*,int,void*,struct sbp_target_agent*) ; 
 int FUNC8 (struct fw_card*,int,void*,struct sbp_target_agent*) ; 

__attribute__((used)) static void FUNC9(struct fw_card *card, struct fw_request *request,
		int tcode, int destination, int source, int generation,
		unsigned long long offset, void *data, size_t length,
		void *callback_data)
{
	struct sbp_target_agent *agent = callback_data;
	struct sbp_session *sess = agent->login->sess;
	int sess_gen, sess_node, rcode;

	FUNC2(&sess->lock);
	sess_gen = sess->generation;
	sess_node = sess->node_id;
	FUNC3(&sess->lock);

	if (generation != sess_gen) {
		FUNC1("ignoring request with wrong generation\n");
		rcode = RCODE_TYPE_ERROR;
		goto out;
	}

	if (source != sess_node) {
		FUNC1("ignoring request from foreign node (%x != %x)\n",
				source, sess_node);
		rcode = RCODE_TYPE_ERROR;
		goto out;
	}

	/* turn offset into the offset from the start of the block */
	offset -= agent->handler.offset;

	if (offset == 0x00 && length == 4) {
		/* AGENT_STATE */
		rcode = FUNC5(card, tcode, data, agent);
	} else if (offset == 0x04 && length == 4) {
		/* AGENT_RESET */
		rcode = FUNC4(card, tcode, data, agent);
	} else if (offset == 0x08 && length == 8) {
		/* ORB_POINTER */
		rcode = FUNC7(card, tcode, data, agent);
	} else if (offset == 0x10 && length == 4) {
		/* DOORBELL */
		rcode = FUNC6(card, tcode, data, agent);
	} else if (offset == 0x14 && length == 4) {
		/* UNSOLICITED_STATUS_ENABLE */
		rcode = FUNC8(card, tcode,
				data, agent);
	} else {
		rcode = RCODE_ADDRESS_ERROR;
	}

out:
	FUNC0(card, request, rcode);
}