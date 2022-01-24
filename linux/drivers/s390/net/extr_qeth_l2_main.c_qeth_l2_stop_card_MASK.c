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
struct TYPE_2__ {int /*<<< orphan*/  mac_bits; } ;
struct qeth_card {scalar_t__ state; TYPE_1__ info; int /*<<< orphan*/  event_wq; int /*<<< orphan*/  rx_mode_work; } ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 scalar_t__ CARD_STATE_HARDSETUP ; 
 scalar_t__ CARD_STATE_SOFTSETUP ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_LAYER2_MAC_REGISTERED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct qeth_card *card)
{
	FUNC0(card, 2, "stopcard");

	FUNC8(card, 0, 1);

	FUNC1(&card->rx_mode_work);
	FUNC6(card);

	if (card->state == CARD_STATE_SOFTSETUP) {
		FUNC3(card);
		card->state = CARD_STATE_HARDSETUP;
	}
	if (card->state == CARD_STATE_HARDSETUP) {
		FUNC7(card, 0);
		FUNC5(card);
		FUNC4(card);
		card->state = CARD_STATE_DOWN;
	}

	FUNC2(card->event_wq);
	card->info.mac_bits &= ~QETH_LAYER2_MAC_REGISTERED;
}