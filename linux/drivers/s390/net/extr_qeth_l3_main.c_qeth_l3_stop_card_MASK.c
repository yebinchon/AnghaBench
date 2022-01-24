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
struct TYPE_4__ {scalar_t__ promisc_mode; } ;
struct TYPE_3__ {scalar_t__ sniffer; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  event_wq; TYPE_2__ info; TYPE_1__ options; int /*<<< orphan*/  rx_mode_work; } ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 scalar_t__ CARD_STATE_HARDSETUP ; 
 scalar_t__ CARD_STATE_SOFTSETUP ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_TRACE_DISABLE ; 
 scalar_t__ SET_PROMISC_MODE_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct qeth_card *card)
{
	FUNC0(card, 2, "stopcard");

	FUNC10(card, 0, 1);

	FUNC1(&card->rx_mode_work);
	FUNC8(card);

	if (card->options.sniffer &&
	    (card->info.promisc_mode == SET_PROMISC_MODE_ON))
		FUNC5(card, QETH_DIAGS_CMD_TRACE_DISABLE);

	if (card->state == CARD_STATE_SOFTSETUP) {
		FUNC7(card, 1);
		FUNC3(card);
		card->state = CARD_STATE_HARDSETUP;
	}
	if (card->state == CARD_STATE_HARDSETUP) {
		FUNC9(card, 0);
		FUNC6(card);
		FUNC4(card);
		card->state = CARD_STATE_DOWN;
	}

	FUNC2(card->event_wq);
}