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
struct qtnf_wmac {int /*<<< orphan*/  macid; struct qtnf_bus* bus; } ;
struct qtnf_vif {scalar_t__ cons_tx_timeout_cnt; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  vifid; struct qtnf_wmac* mac; } ;
struct qtnf_bus {int /*<<< orphan*/  workqueue; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ QTNF_TX_TIMEOUT_TRSHLD ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qtnf_bus*,struct net_device*) ; 
 struct qtnf_vif* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct net_device *ndev)
{
	struct qtnf_vif *vif = FUNC4(ndev);
	struct qtnf_wmac *mac;
	struct qtnf_bus *bus;

	if (FUNC6(!vif || !vif->mac || !vif->mac->bus))
		return;

	mac = vif->mac;
	bus = mac->bus;

	FUNC2("VIF%u.%u: Tx timeout- %lu\n", mac->macid, vif->vifid, jiffies);

	FUNC3(bus, ndev);
	ndev->stats.tx_errors++;

	if (++vif->cons_tx_timeout_cnt > QTNF_TX_TIMEOUT_TRSHLD) {
		FUNC1("Tx timeout threshold exceeded !\n");
		FUNC1("schedule interface %s reset !\n", FUNC0(ndev));
		FUNC5(bus->workqueue, &vif->reset_work);
	}
}