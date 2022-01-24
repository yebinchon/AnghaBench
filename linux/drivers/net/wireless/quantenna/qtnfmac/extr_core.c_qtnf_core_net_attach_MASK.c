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
struct wiphy {int dummy; } ;
struct qtnf_wmac {TYPE_1__* bus; } ;
struct TYPE_4__ {void* iftype; } ;
struct qtnf_vif {TYPE_2__ wdev; int /*<<< orphan*/  mac_addr; struct net_device* netdev; } ;
struct net_device {int needs_free_netdev; int flags; int tx_queue_len; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/  dev_addr; TYPE_2__* ieee80211_ptr; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 void* NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  QTNF_DEF_WDOG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (int,char const*,unsigned char,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ether_setup ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 void* FUNC5 (struct net_device*) ; 
 struct wiphy* FUNC6 (struct qtnf_wmac*) ; 
 int /*<<< orphan*/  qtnf_ethtool_ops ; 
 int /*<<< orphan*/  qtnf_netdev_ops ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC9 (struct wiphy*) ; 

int FUNC10(struct qtnf_wmac *mac, struct qtnf_vif *vif,
			 const char *name, unsigned char name_assign_type)
{
	struct wiphy *wiphy = FUNC6(mac);
	struct net_device *dev;
	void *qdev_vif;
	int ret;

	dev = FUNC1(sizeof(struct qtnf_vif *), name,
			       name_assign_type, ether_setup, 1, 1);
	if (!dev) {
		vif->wdev.iftype = NL80211_IFTYPE_UNSPECIFIED;
		return -ENOMEM;
	}

	vif->netdev = dev;

	dev->netdev_ops = &qtnf_netdev_ops;
	dev->needs_free_netdev = true;
	FUNC2(dev, FUNC9(wiphy));
	dev->ieee80211_ptr = &vif->wdev;
	FUNC3(dev->dev_addr, vif->mac_addr);
	FUNC0(dev, FUNC8(wiphy));
	dev->flags |= IFF_BROADCAST | IFF_MULTICAST;
	dev->watchdog_timeo = QTNF_DEF_WDOG_TIMEOUT;
	dev->tx_queue_len = 100;
	dev->ethtool_ops = &qtnf_ethtool_ops;

	qdev_vif = FUNC5(dev);
	*((void **)qdev_vif) = vif;

	FUNC0(dev, mac->bus->dev);

	ret = FUNC7(dev);
	if (ret) {
		FUNC4(dev);
		vif->wdev.iftype = NL80211_IFTYPE_UNSPECIFIED;
	}

	return ret;
}