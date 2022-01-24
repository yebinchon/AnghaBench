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
typedef  int u16 ;
struct qeth_cmd_buffer {int /*<<< orphan*/  data; struct qeth_channel* channel; } ;
struct qeth_channel {int /*<<< orphan*/  ccwdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  func_level; } ;
struct qeth_card {TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct qeth_card*,struct qeth_channel*,struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_cmd_buffer*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_cmd_buffer*) ; 

__attribute__((used)) static void FUNC9(struct qeth_card *card,
					       struct qeth_cmd_buffer *iob,
					       unsigned int data_length)
{
	struct qeth_channel *channel = iob->channel;
	u16 peer_level;
	int rc;

	FUNC1(card, 2, "idxwrcb");

	rc = FUNC5(card, channel, iob);
	if (rc)
		goto out;

	FUNC4(&peer_level, FUNC3(iob->data), 2);
	if ((peer_level & ~0x0100) !=
	    FUNC7(card->info.func_level)) {
		FUNC2(2, "IDX_ACTIVATE on channel %x: function level mismatch (sent: %#x, received: %#x)\n",
				 FUNC0(channel->ccwdev),
				 card->info.func_level, peer_level);
		rc = -EINVAL;
	}

out:
	FUNC6(iob, rc);
	FUNC8(iob);
}