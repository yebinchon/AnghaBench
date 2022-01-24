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
struct TYPE_2__ {int tx_stopped; int /*<<< orphan*/  reclaim_tq; int /*<<< orphan*/  sysctl_bar; } ;
struct qtnf_pcie_topaz_state {TYPE_1__ base; int /*<<< orphan*/  txqueue_wake; } ;
struct qtnf_bus {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOPAZ_RC_TX_STOP_IRQ ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct qtnf_bus *bus, struct net_device *ndev)
{
	struct qtnf_pcie_topaz_state *ts = (void *)FUNC3(bus);

	if (ndev) {
		FUNC4(ndev);
		ts->base.tx_stopped = 1;
	}

	FUNC6(0x0, ts->txqueue_wake);

	/* sync up tx queue status before generating interrupt */
	FUNC2();

	/* send irq to card: tx stopped */
	FUNC6(FUNC0(TOPAZ_RC_TX_STOP_IRQ),
	       FUNC1(ts->base.sysctl_bar));

	/* schedule reclaim attempt */
	FUNC5(&ts->base.reclaim_tq);
}