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
struct qeth_cmd_buffer {int /*<<< orphan*/ * channel; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  trans_hdr; } ;
struct qeth_card {TYPE_1__ seqno; int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int /*<<< orphan*/  QETH_SEQ_NO_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qeth_card *card,
				  struct qeth_cmd_buffer *iob)
{
	FUNC1(FUNC0(iob->data), &card->seqno.trans_hdr,
	       QETH_SEQ_NO_LENGTH);
	if (iob->channel == &card->write)
		card->seqno.trans_hdr++;
}