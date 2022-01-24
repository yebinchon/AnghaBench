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
typedef  int u16 ;
struct wiphy {int /*<<< orphan*/  registered; } ;
struct qtnf_vif {TYPE_3__* netdev; TYPE_2__* mac; } ;
struct qlink_event_external_auth {int /*<<< orphan*/  action; int /*<<< orphan*/  bssid; int /*<<< orphan*/  akm_suite; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_4__ {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct cfg80211_external_auth_params {int /*<<< orphan*/  key_mgmt_suite; int /*<<< orphan*/  action; int /*<<< orphan*/  bssid; TYPE_1__ ssid; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (TYPE_3__*,struct cfg80211_external_auth_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct wiphy* FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC8(struct qtnf_vif *vif,
				const struct qlink_event_external_auth *ev,
				u16 len)
{
	struct cfg80211_external_auth_params auth = {0};
	struct wiphy *wiphy = FUNC7(vif->mac);
	int ret;

	if (len < sizeof(*ev)) {
		FUNC4("MAC%u: payload is too short\n", vif->mac->macid);
		return -EINVAL;
	}

	if (!wiphy->registered || !vif->netdev)
		return 0;

	if (ev->ssid_len) {
		FUNC3(auth.ssid.ssid, ev->ssid, ev->ssid_len);
		auth.ssid.ssid_len = ev->ssid_len;
	}

	auth.key_mgmt_suite = FUNC2(ev->akm_suite);
	FUNC1(auth.bssid, ev->bssid);
	auth.action = ev->action;

	FUNC5("%s: external auth bss=%pM action=%u akm=%u\n",
		vif->netdev->name, auth.bssid, auth.action,
		auth.key_mgmt_suite);

	ret = FUNC0(vif->netdev, &auth, GFP_KERNEL);
	if (ret)
		FUNC6("failed to offload external auth request\n");

	return ret;
}