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
struct qeth_cmd_buffer {int /*<<< orphan*/  callback; int /*<<< orphan*/  data; } ;
struct qeth_channel {int /*<<< orphan*/  state; } ;
struct qeth_card {struct qeth_channel read; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_STATE_UP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IDX_ACTIVATE_READ ; 
 int /*<<< orphan*/  IDX_ACTIVATE_SIZE ; 
 int /*<<< orphan*/  QETH_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qeth_cmd_buffer* FUNC2 (struct qeth_channel*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_idx_activate_read_channel_cb ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,struct qeth_cmd_buffer*) ; 
 int FUNC4 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct qeth_card *card)
{
	struct qeth_channel *channel = &card->read;
	struct qeth_cmd_buffer *iob;
	int rc;

	FUNC0(card, 2, "idxread");

	iob = FUNC2(channel, QETH_BUFSIZE, 2, QETH_TIMEOUT);
	if (!iob)
		return -ENOMEM;

	FUNC1(iob->data, IDX_ACTIVATE_READ, IDX_ACTIVATE_SIZE);
	FUNC3(card, iob);
	iob->callback = qeth_idx_activate_read_channel_cb;

	rc = FUNC4(card, iob, NULL, NULL);
	if (rc)
		return rc;

	channel->state = CH_STATE_UP;
	return 0;
}