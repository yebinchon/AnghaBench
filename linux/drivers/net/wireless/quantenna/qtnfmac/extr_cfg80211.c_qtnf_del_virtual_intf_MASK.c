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
struct wireless_dev {struct net_device* netdev; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  iftype; } ;
struct qtnf_vif {TYPE_2__ wdev; TYPE_1__* netdev; int /*<<< orphan*/  vifid; TYPE_3__* mac; int /*<<< orphan*/  high_pri_tx_work; int /*<<< orphan*/  high_pri_tx_queue; } ;
struct net_device {scalar_t__ reg_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  macid; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ieee80211_ptr; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct qtnf_vif*) ; 
 struct qtnf_vif* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

int FUNC12(struct wiphy *wiphy, struct wireless_dev *wdev)
{
	struct net_device *netdev =  wdev->netdev;
	struct qtnf_vif *vif;
	struct sk_buff *skb;

	if (FUNC0(!netdev))
		return -EFAULT;

	vif = FUNC8(wdev->netdev);

	FUNC9(vif->mac, true);

	/* Stop data */
	FUNC5(netdev);
	if (FUNC4(netdev))
		FUNC3(netdev);

	while ((skb = FUNC10(&vif->high_pri_tx_queue)))
		FUNC2(skb);

	FUNC1(&vif->high_pri_tx_work);

	if (netdev->reg_state == NETREG_REGISTERED)
		FUNC11(netdev);

	if (FUNC7(vif))
		FUNC6("VIF%u.%u: failed to delete VIF\n", vif->mac->macid,
		       vif->vifid);

	vif->netdev->ieee80211_ptr = NULL;
	vif->netdev = NULL;
	vif->wdev.iftype = NL80211_IFTYPE_UNSPECIFIED;

	return 0;
}