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
struct qeth_card {TYPE_1__* gdev; } ;
struct net_device {int /*<<< orphan*/  features; int /*<<< orphan*/  wanted_features; int /*<<< orphan*/  hw_features; struct qeth_card* ml_priv; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *dev)
{
	struct qeth_card *card = dev->ml_priv;
	netdev_features_t features;

	features = dev->features;
	/* force-off any feature that might need an IPA sequence.
	 * netdev_update_features() will restart them.
	 */
	dev->features &= ~dev->hw_features;
	/* toggle VLAN filter, so that VIDs are re-programmed: */
	if (FUNC0(card) && FUNC1(card)) {
		dev->features &= ~NETIF_F_HW_VLAN_CTAG_FILTER;
		dev->wanted_features |= NETIF_F_HW_VLAN_CTAG_FILTER;
	}
	FUNC3(dev);
	if (features != dev->features)
		FUNC2(&card->gdev->dev,
			 "Device recovery failed to restore all offload features\n");
}