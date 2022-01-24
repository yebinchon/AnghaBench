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
struct qtnf_wmac {struct qtnf_vif* iflist; } ;
struct qtnf_vif {scalar_t__ netdev; TYPE_1__* mac; } ;
struct TYPE_4__ {int mac_bitmap; } ;
struct qtnf_bus {struct qtnf_wmac** mac; TYPE_2__ hw_info; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct qtnf_bus* bus; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int QTNF_MAX_INTF ; 
 int QTNF_MAX_MAC ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct qtnf_vif* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(struct net_device *ndev)
{
	struct qtnf_vif *vif = FUNC3(ndev);
	struct qtnf_wmac *mac;
	struct qtnf_bus *bus;
	int macid;
	int i;

	if (FUNC4(!vif || !vif->mac || !vif->mac->bus))
		return;

	bus = vif->mac->bus;

	for (macid = 0; macid < QTNF_MAX_MAC; macid++) {
		if (!(bus->hw_info.mac_bitmap & FUNC0(macid)))
			continue;

		mac = bus->mac[macid];
		for (i = 0; i < QTNF_MAX_INTF; i++) {
			vif = &mac->iflist[i];
			if (vif->netdev && FUNC1(vif->netdev))
				FUNC2(vif->netdev);
		}
	}
}