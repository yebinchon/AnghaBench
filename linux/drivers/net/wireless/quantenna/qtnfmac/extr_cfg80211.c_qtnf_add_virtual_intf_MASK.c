#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wireless_dev {int iftype; int /*<<< orphan*/ * netdev; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct vif_params {int use_4addr; int /*<<< orphan*/ * macaddr; } ;
struct qtnf_wmac {int /*<<< orphan*/  macid; } ;
struct qtnf_vif {int vifid; struct wireless_dev wdev; int /*<<< orphan*/ * netdev; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  bss_priority; int /*<<< orphan*/  bssid; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 struct wireless_dev* FUNC0 (int) ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_STATION 128 
 int NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  QTNF_DEF_BSS_PRIORITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wireless_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (struct qtnf_vif*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct qtnf_vif*) ; 
 int FUNC7 (struct qtnf_wmac*,struct qtnf_vif*,char const*,unsigned char) ; 
 struct qtnf_vif* FUNC8 (struct qtnf_wmac*) ; 
 int FUNC9 (struct wiphy*,int /*<<< orphan*/ *,int) ; 
 struct qtnf_wmac* FUNC10 (struct wiphy*) ; 

__attribute__((used)) static struct wireless_dev *FUNC11(struct wiphy *wiphy,
						  const char *name,
						  unsigned char name_assign_t,
						  enum nl80211_iftype type,
						  struct vif_params *params)
{
	struct qtnf_wmac *mac;
	struct qtnf_vif *vif;
	u8 *mac_addr = NULL;
	int use4addr = 0;
	int ret;

	mac = FUNC10(wiphy);

	if (!mac)
		return FUNC0(-EFAULT);

	ret = FUNC9(wiphy, NULL, type);
	if (ret) {
		FUNC4("MAC%u invalid combination: failed to add type %d\n",
		       mac->macid, type);
		return FUNC0(ret);
	}

	switch (type) {
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_AP:
		vif = FUNC8(mac);
		if (!vif) {
			FUNC4("MAC%u: no free VIF available\n", mac->macid);
			return FUNC0(-EFAULT);
		}

		FUNC1(vif->mac_addr);
		FUNC1(vif->bssid);
		vif->bss_priority = QTNF_DEF_BSS_PRIORITY;
		FUNC3(&vif->wdev, 0, sizeof(vif->wdev));
		vif->wdev.wiphy = wiphy;
		vif->wdev.iftype = type;
		break;
	default:
		FUNC4("MAC%u: unsupported IF type %d\n", mac->macid, type);
		return FUNC0(-ENOTSUPP);
	}

	if (params) {
		mac_addr = params->macaddr;
		use4addr = params->use_4addr;
	}

	ret = FUNC5(vif, type, use4addr, mac_addr);
	if (ret) {
		FUNC4("VIF%u.%u: failed to add VIF %pM\n",
		       mac->macid, vif->vifid, mac_addr);
		goto err_cmd;
	}

	if (!FUNC2(vif->mac_addr)) {
		FUNC4("VIF%u.%u: FW reported bad MAC: %pM\n",
		       mac->macid, vif->vifid, vif->mac_addr);
		ret = -EINVAL;
		goto err_mac;
	}

	ret = FUNC7(mac, vif, name, name_assign_t);
	if (ret) {
		FUNC4("VIF%u.%u: failed to attach netdev\n", mac->macid,
		       vif->vifid);
		goto err_net;
	}

	vif->wdev.netdev = vif->netdev;
	return &vif->wdev;

err_net:
	vif->netdev = NULL;
err_mac:
	FUNC6(vif);
err_cmd:
	vif->wdev.iftype = NL80211_IFTYPE_UNSPECIFIED;

	return FUNC0(ret);
}