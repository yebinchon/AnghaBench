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
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {scalar_t__ read_or_write_problem; } ;

/* Variables and functions */
 int EIO ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int FUNC4 (struct qeth_card*,struct qeth_cmd_buffer*,int (*) (struct qeth_card*,struct qeth_reply*,unsigned long),void*) ; 
 int FUNC5 (struct qeth_card*,struct qeth_reply*,unsigned long) ; 

int FUNC6(struct qeth_card *card, struct qeth_cmd_buffer *iob,
		int (*reply_cb)(struct qeth_card *, struct qeth_reply*,
			unsigned long),
		void *reply_param)
{
	int rc;

	FUNC0(card, 4, "sendipa");

	if (card->read_or_write_problem) {
		FUNC2(iob);
		return -EIO;
	}

	if (reply_cb == NULL)
		reply_cb = qeth_send_ipa_cmd_cb;
	rc = FUNC4(card, iob, reply_cb, reply_param);
	if (rc == -ETIME) {
		FUNC1(card);
		FUNC3(card);
	}
	return rc;
}