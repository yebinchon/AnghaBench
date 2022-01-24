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
struct qeth_cmd_buffer {int /*<<< orphan*/  callback; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdu_hdr_ack; int /*<<< orphan*/  pdu_hdr; } ;
struct qeth_card {TYPE_1__ seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QETH_SEQ_NO_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  qeth_release_buffer_cb ; 

__attribute__((used)) static void FUNC4(struct qeth_card *card,
				  struct qeth_cmd_buffer *iob)
{
	FUNC3(card, iob);

	FUNC2(FUNC1(iob->data),
	       &card->seqno.pdu_hdr, QETH_SEQ_NO_LENGTH);
	card->seqno.pdu_hdr++;
	FUNC2(FUNC0(iob->data),
	       &card->seqno.pdu_hdr_ack, QETH_SEQ_NO_LENGTH);

	iob->callback = qeth_release_buffer_cb;
}