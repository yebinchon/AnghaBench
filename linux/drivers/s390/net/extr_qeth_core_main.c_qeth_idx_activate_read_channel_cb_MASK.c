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
typedef  scalar_t__ u16 ;
struct qeth_cmd_buffer {int /*<<< orphan*/  data; struct qeth_channel* channel; } ;
struct qeth_channel {int /*<<< orphan*/  ccwdev; } ;
struct TYPE_4__ {scalar_t__* mcl_level; int /*<<< orphan*/  func_level; } ;
struct TYPE_3__ {scalar_t__ issuer_rm_r; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__ token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int QETH_MCL_LENGTH ; 
 int QETH_MPC_TOKEN_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct qeth_card*,struct qeth_channel*,struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_cmd_buffer*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_cmd_buffer*) ; 

__attribute__((used)) static void FUNC11(struct qeth_card *card,
					      struct qeth_cmd_buffer *iob,
					      unsigned int data_length)
{
	struct qeth_channel *channel = iob->channel;
	u16 peer_level;
	int rc;

	FUNC1(card, 2, "idxrdcb");

	rc = FUNC7(card, channel, iob);
	if (rc)
		goto out;

	FUNC6(&peer_level, FUNC3(iob->data), 2);
	if (peer_level != FUNC9(card->info.func_level)) {
		FUNC2(2, "IDX_ACTIVATE on channel %x: function level mismatch (sent: %#x, received: %#x)\n",
				 FUNC0(channel->ccwdev),
				 card->info.func_level, peer_level);
		rc = -EINVAL;
		goto out;
	}

	FUNC6(&card->token.issuer_rm_r,
	       FUNC4(iob->data),
	       QETH_MPC_TOKEN_LENGTH);
	FUNC6(&card->info.mcl_level[0],
	       FUNC5(iob->data), QETH_MCL_LENGTH);

out:
	FUNC8(iob, rc);
	FUNC10(iob);
}