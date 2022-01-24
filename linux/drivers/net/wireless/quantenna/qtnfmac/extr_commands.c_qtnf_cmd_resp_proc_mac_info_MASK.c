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
struct qtnf_mac_info {int /*<<< orphan*/  vht_cap_mod_mask; int /*<<< orphan*/  ht_cap_mod_mask; int /*<<< orphan*/  max_acl_mac_addrs; int /*<<< orphan*/  radar_detect_widths; int /*<<< orphan*/  max_ap_assoc_sta; int /*<<< orphan*/  num_rx_chain; int /*<<< orphan*/  num_tx_chain; int /*<<< orphan*/  dev_mac; int /*<<< orphan*/  bands_cap; } ;
struct qtnf_wmac {int /*<<< orphan*/  macaddr; struct qtnf_mac_info macinfo; } ;
struct qtnf_vif {int /*<<< orphan*/  mac_addr; } ;
struct qlink_resp_get_mac_info {int /*<<< orphan*/  vht_cap_mod_mask; int /*<<< orphan*/  ht_cap_mod_mask; int /*<<< orphan*/  max_acl_mac_addrs; int /*<<< orphan*/  radar_detect_widths; int /*<<< orphan*/  max_ap_assoc_sta; int /*<<< orphan*/  num_rx_chain; int /*<<< orphan*/  num_tx_chain; int /*<<< orphan*/  dev_mac; int /*<<< orphan*/  bands_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct qtnf_vif* FUNC6 (struct qtnf_wmac*) ; 

__attribute__((used)) static void
FUNC7(struct qtnf_wmac *mac,
			    const struct qlink_resp_get_mac_info *resp_info)
{
	struct qtnf_mac_info *mac_info;
	struct qtnf_vif *vif;

	mac_info = &mac->macinfo;

	mac_info->bands_cap = resp_info->bands_cap;
	FUNC3(&mac_info->dev_mac, &resp_info->dev_mac,
	       sizeof(mac_info->dev_mac));

	FUNC0(mac->macaddr, mac_info->dev_mac);

	vif = FUNC6(mac);
	if (vif)
		FUNC0(vif->mac_addr, mac->macaddr);
	else
		FUNC4("could not get valid base vif\n");

	mac_info->num_tx_chain = resp_info->num_tx_chain;
	mac_info->num_rx_chain = resp_info->num_rx_chain;

	mac_info->max_ap_assoc_sta = FUNC1(resp_info->max_ap_assoc_sta);
	mac_info->radar_detect_widths =
			FUNC5(FUNC1(
					resp_info->radar_detect_widths));
	mac_info->max_acl_mac_addrs = FUNC2(resp_info->max_acl_mac_addrs);

	FUNC3(&mac_info->ht_cap_mod_mask, &resp_info->ht_cap_mod_mask,
	       sizeof(mac_info->ht_cap_mod_mask));
	FUNC3(&mac_info->vht_cap_mod_mask, &resp_info->vht_cap_mod_mask,
	       sizeof(mac_info->vht_cap_mod_mask));
}