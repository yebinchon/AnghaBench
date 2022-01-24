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
struct qeth_cmd_buffer {int /*<<< orphan*/  callback; int /*<<< orphan*/  data; int /*<<< orphan*/  length; struct qeth_channel* channel; } ;
struct qeth_channel {scalar_t__ state; int /*<<< orphan*/  irq_pending; int /*<<< orphan*/  ccwdev; } ;
struct qeth_card {int read_or_write_problem; int /*<<< orphan*/  wait_q; struct qeth_cmd_buffer* read_cmd; } ;
struct ccw1 {int dummy; } ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  CCW_CMD_READ ; 
 scalar_t__ CH_STATE_UP ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int /*<<< orphan*/ ) ; 
 struct ccw1* FUNC3 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ccw1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  qeth_issue_next_read_cb ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC10 (struct ccw1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct qeth_card *card)
{
	struct qeth_cmd_buffer *iob = card->read_cmd;
	struct qeth_channel *channel = iob->channel;
	struct ccw1 *ccw = FUNC3(iob);
	int rc;

	FUNC1(card, 5, "issnxrd");
	if (channel->state != CH_STATE_UP)
		return -EIO;

	FUNC6(iob->data, 0, iob->length);
	FUNC10(ccw, CCW_CMD_READ, 0, iob->length, iob->data);
	iob->callback = qeth_issue_next_read_cb;
	/* keep the cmd alive after completion: */
	FUNC7(iob);

	FUNC1(card, 6, "noirqpnd");
	rc = FUNC5(channel->ccwdev, ccw, (addr_t) iob, 0, 0);
	if (rc) {
		FUNC2(2, "error %i on device %x when starting next read ccw!\n",
				 rc, FUNC0(card));
		FUNC4(&channel->irq_pending, 0);
		FUNC8(iob);
		card->read_or_write_problem = 1;
		FUNC9(card);
		FUNC11(&card->wait_q);
	}
	return rc;
}