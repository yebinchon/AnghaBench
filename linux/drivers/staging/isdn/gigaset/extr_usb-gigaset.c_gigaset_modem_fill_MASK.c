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
struct TYPE_4__ {TYPE_1__* usb; } ;
struct cardstate {scalar_t__ cmdbuf; TYPE_2__ hw; struct bc_state* bcs; } ;
struct bc_state {scalar_t__ tx_skb; int /*<<< orphan*/  squeue; } ;
struct TYPE_3__ {scalar_t__ busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_INTR ; 
 int /*<<< orphan*/  DEBUG_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (struct cardstate*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct cardstate*) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct cardstate *cs = (struct cardstate *) data;
	struct bc_state *bcs = &cs->bcs[0]; /* only one channel */

	FUNC0(DEBUG_OUTPUT, "modem_fill");

	if (cs->hw.usb->busy) {
		FUNC0(DEBUG_OUTPUT, "modem_fill: busy");
		return;
	}

again:
	if (!bcs->tx_skb) {	/* no skb is being sent */
		if (cs->cmdbuf) {	/* commands to send? */
			FUNC0(DEBUG_OUTPUT, "modem_fill: cb");
			if (FUNC1(cs) < 0) {
				FUNC0(DEBUG_OUTPUT,
					"modem_fill: send_cb failed");
				goto again; /* no callback will be called! */
			}
			return;
		}

		/* skbs to send? */
		bcs->tx_skb = FUNC2(&bcs->squeue);
		if (!bcs->tx_skb)
			return;

		FUNC0(DEBUG_INTR, "Dequeued skb (Adr: %lx)!",
			(unsigned long) bcs->tx_skb);
	}

	FUNC0(DEBUG_OUTPUT, "modem_fill: tx_skb");
	if (FUNC3(cs) < 0) {
		FUNC0(DEBUG_OUTPUT, "modem_fill: write_modem failed");
		goto again;	/* no callback will be called! */
	}
}