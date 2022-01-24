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
struct sk_buff {scalar_t__ len; } ;
struct qtnf_wmac {struct qtnf_vif* iflist; } ;
struct TYPE_2__ {scalar_t__ iftype; } ;
struct qtnf_vif {struct net_device* netdev; TYPE_1__ wdev; } ;
struct qtnf_frame_meta_info {size_t magic_s; size_t magic_e; size_t macid; size_t ifidx; } ;
struct qtnf_bus {scalar_t__ fw_state; struct qtnf_wmac** mac; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 scalar_t__ QTNF_FW_STATE_RUNNING ; 
 size_t QTNF_MAX_INTF ; 
 size_t QTNF_MAX_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC2 (struct qtnf_frame_meta_info*) ; 
 int FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

struct net_device *FUNC5(struct qtnf_bus *bus, struct sk_buff *skb)
{
	struct qtnf_frame_meta_info *meta;
	struct net_device *ndev = NULL;
	struct qtnf_wmac *mac;
	struct qtnf_vif *vif;

	if (FUNC4(bus->fw_state != QTNF_FW_STATE_RUNNING))
		return NULL;

	meta = (struct qtnf_frame_meta_info *)
		(FUNC3(skb) - sizeof(*meta));

	if (FUNC4(!FUNC2(meta))) {
		FUNC1("invalid magic 0x%x:0x%x\n",
				   meta->magic_s, meta->magic_e);
		goto out;
	}

	if (FUNC4(meta->macid >= QTNF_MAX_MAC)) {
		FUNC1("invalid mac(%u)\n", meta->macid);
		goto out;
	}

	if (FUNC4(meta->ifidx >= QTNF_MAX_INTF)) {
		FUNC1("invalid vif(%u)\n", meta->ifidx);
		goto out;
	}

	mac = bus->mac[meta->macid];

	if (FUNC4(!mac)) {
		FUNC1("mac(%d) does not exist\n", meta->macid);
		goto out;
	}

	vif = &mac->iflist[meta->ifidx];

	if (FUNC4(vif->wdev.iftype == NL80211_IFTYPE_UNSPECIFIED)) {
		FUNC1("vif(%u) does not exists\n", meta->ifidx);
		goto out;
	}

	ndev = vif->netdev;

	if (FUNC4(!ndev)) {
		FUNC1("netdev for wlan%u.%u does not exists\n",
				   meta->macid, meta->ifidx);
		goto out;
	}

	FUNC0(skb, skb->len - sizeof(*meta));

out:
	return ndev;
}