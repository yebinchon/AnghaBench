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
struct qtnf_wmac {int wiphy_registered; } ;
struct TYPE_3__ {int /*<<< orphan*/  iftype; int /*<<< orphan*/  use_4addr; } ;
struct qtnf_vif {int /*<<< orphan*/ * netdev; TYPE_1__ wdev; int /*<<< orphan*/  mac_addr; } ;
struct TYPE_4__ {int mac_bitmap; } ;
struct qtnf_bus {TYPE_2__ hw_info; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EFAULT ; 
 scalar_t__ FUNC1 (struct qtnf_wmac*) ; 
 int /*<<< orphan*/  NET_NAME_ENUM ; 
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 int FUNC2 (struct qtnf_wmac*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int FUNC6 (struct qtnf_wmac*) ; 
 int FUNC7 (struct qtnf_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct qtnf_wmac*) ; 
 struct qtnf_wmac* FUNC9 (struct qtnf_bus*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct qtnf_bus*,unsigned int) ; 
 int FUNC11 (struct qtnf_wmac*,struct qtnf_vif*,char*,int /*<<< orphan*/ ) ; 
 struct qtnf_vif* FUNC12 (struct qtnf_wmac*) ; 
 int FUNC13 (struct qtnf_wmac*) ; 
 int FUNC14 (TYPE_2__*,struct qtnf_wmac*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static int FUNC17(struct qtnf_bus *bus, unsigned int macid)
{
	struct qtnf_wmac *mac;
	struct qtnf_vif *vif;
	int ret;

	if (!(bus->hw_info.mac_bitmap & FUNC0(macid))) {
		FUNC5("MAC%u is not active in FW\n", macid);
		return 0;
	}

	mac = FUNC9(bus, macid);
	if (FUNC1(mac)) {
		FUNC4("MAC%u allocation failed\n", macid);
		return FUNC2(mac);
	}

	ret = FUNC6(mac);
	if (ret) {
		FUNC4("MAC%u: failed to get info\n", macid);
		goto error;
	}

	vif = FUNC12(mac);
	if (!vif) {
		FUNC4("MAC%u: primary VIF is not ready\n", macid);
		ret = -EFAULT;
		goto error;
	}

	ret = FUNC7(vif, vif->wdev.iftype,
				     vif->wdev.use_4addr, vif->mac_addr);
	if (ret) {
		FUNC4("MAC%u: failed to add VIF\n", macid);
		goto error;
	}

	ret = FUNC8(mac);
	if (ret) {
		FUNC4("MAC%u: failed to get PHY settings\n", macid);
		goto error;
	}

	ret = FUNC13(mac);
	if (ret) {
		FUNC4("MAC%u: failed to init bands\n", macid);
		goto error;
	}

	ret = FUNC14(&bus->hw_info, mac);
	if (ret) {
		FUNC4("MAC%u: wiphy registration failed\n", macid);
		goto error;
	}

	mac->wiphy_registered = 1;

	FUNC15();

	ret = FUNC11(mac, vif, "wlan%d", NET_NAME_ENUM);
	FUNC16();

	if (ret) {
		FUNC4("MAC%u: failed to attach netdev\n", macid);
		vif->wdev.iftype = NL80211_IFTYPE_UNSPECIFIED;
		vif->netdev = NULL;
		goto error;
	}

	FUNC3("MAC%u initialized\n", macid);

	return 0;

error:
	FUNC10(bus, macid);
	return ret;
}