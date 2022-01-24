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
struct qeth_node_desc {int dummy; } ;
struct qeth_cmd_buffer {int /*<<< orphan*/  data; int /*<<< orphan*/  length; int /*<<< orphan*/  callback; } ;
struct qeth_channel {int /*<<< orphan*/  ccwdev; } ;
struct qeth_card {struct qeth_channel data; } ;
struct ciw {scalar_t__ cmd; int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIW_TYPE_RCD ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  QETH_RCD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_cmd_buffer*) ; 
 struct ciw* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qeth_cmd_buffer* FUNC2 (struct qeth_channel*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_read_conf_data_cb ; 
 int FUNC3 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct qeth_card *card)
{
	struct qeth_channel *channel = &card->data;
	struct qeth_cmd_buffer *iob;
	struct ciw *ciw;

	/* scan for RCD command in extended SenseID data */
	ciw = FUNC1(channel->ccwdev, CIW_TYPE_RCD);
	if (!ciw || ciw->cmd == 0)
		return -EOPNOTSUPP;
	if (ciw->count < sizeof(struct qeth_node_desc))
		return -EINVAL;

	iob = FUNC2(channel, ciw->count, 1, QETH_RCD_TIMEOUT);
	if (!iob)
		return -ENOMEM;

	iob->callback = qeth_read_conf_data_cb;
	FUNC4(FUNC0(iob), ciw->cmd, 0, iob->length,
		       iob->data);

	return FUNC3(card, iob, NULL, NULL);
}