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
typedef  int /*<<< orphan*/  template ;
struct wl1251 {int /*<<< orphan*/  bssid; int /*<<< orphan*/  mac_addr; } ;
struct ieee80211_qos_hdr {void* qos_ctrl; void* frame_control; int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_QOS_NULL_DATA ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_FCTL_TODS ; 
 int IEEE80211_FTYPE_DATA ; 
 int IEEE80211_STYPE_QOS_NULLFUNC ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_qos_hdr*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct wl1251*,int /*<<< orphan*/ ,struct ieee80211_qos_hdr*,int) ; 

__attribute__((used)) static int FUNC4(struct wl1251 *wl)
{
	struct ieee80211_qos_hdr template;

	FUNC2(&template, 0, sizeof(template));

	FUNC1(template.addr1, wl->bssid, ETH_ALEN);
	FUNC1(template.addr2, wl->mac_addr, ETH_ALEN);
	FUNC1(template.addr3, wl->bssid, ETH_ALEN);

	template.frame_control = FUNC0(IEEE80211_FTYPE_DATA |
					     IEEE80211_STYPE_QOS_NULLFUNC |
					     IEEE80211_FCTL_TODS);

	/* FIXME: not sure what priority to use here */
	template.qos_ctrl = FUNC0(0);

	return FUNC3(wl, CMD_QOS_NULL_DATA, &template,
				       sizeof(template));
}