#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sniffer; } ;
struct TYPE_5__ {int promisc_mode; } ;
struct qeth_card {TYPE_3__ options; TYPE_2__ info; TYPE_1__* dev; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  IPA_SETADP_SET_DIAG_ASSIST ; 
 int /*<<< orphan*/  IPA_SETADP_SET_PROMISC_MODE ; 
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_TRACE_DISABLE ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_TRACE_ENABLE ; 
 scalar_t__ FUNC2 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int) ; 

__attribute__((used)) static void FUNC5(struct qeth_card *card)
{
	bool enable = card->dev->flags & IFF_PROMISC;

	if (card->info.promisc_mode == enable)
		return;

	if (FUNC0(card)) {		/* Guestlan trace */
		if (FUNC2(card, IPA_SETADP_SET_PROMISC_MODE))
			FUNC4(card, enable);
	} else if (card->options.sniffer &&	/* HiperSockets trace */
		   FUNC2(card, IPA_SETADP_SET_DIAG_ASSIST)) {
		if (enable) {
			FUNC1(card, 3, "+promisc");
			FUNC3(card, QETH_DIAGS_CMD_TRACE_ENABLE);
		} else {
			FUNC1(card, 3, "-promisc");
			FUNC3(card, QETH_DIAGS_CMD_TRACE_DISABLE);
		}
	}
}