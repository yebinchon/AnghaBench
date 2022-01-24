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
struct TYPE_2__ {int /*<<< orphan*/  sysctl_bar; } ;
struct qtnf_pcie_topaz_state {TYPE_1__ base; int /*<<< orphan*/  txqueue_wake; } ;
struct qtnf_bus {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOPAZ_RC_TX_STOP_IRQ ; 
 struct qtnf_pcie_topaz_state* FUNC2 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct qtnf_bus *bus, struct net_device *ndev)
{
	struct qtnf_pcie_topaz_state *ts = FUNC2(bus);
	int ready;

	ready = FUNC4(ts->txqueue_wake);
	if (ready) {
		FUNC3(ndev);
	} else {
		/* re-send irq to card: tx stopped */
		FUNC5(FUNC0(TOPAZ_RC_TX_STOP_IRQ),
		       FUNC1(ts->base.sysctl_bar));
	}
}