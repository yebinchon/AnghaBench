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
typedef  void* u8 ;
struct rtl_mac {int /*<<< orphan*/  assoc_id; TYPE_2__* vif; int /*<<< orphan*/ * bssid; } ;
struct ieee80211_hw {int dummy; } ;
struct h2c_joinbss_rpt_parm {int /*<<< orphan*/ * bssid; void* ps_qos_info; void* opmode; } ;
struct TYPE_3__ {int /*<<< orphan*/  beacon_int; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_H2C_JOINBSSRPT ; 
 int /*<<< orphan*/  FUNC0 (void**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,void**) ; 
 struct rtl_mac* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 

void FUNC4(struct ieee80211_hw *hw,
		u8 mstatus, u8 ps_qosinfo)
{
	struct rtl_mac *mac = FUNC2(FUNC3(hw));
	struct h2c_joinbss_rpt_parm joinbss_rpt;

	joinbss_rpt.opmode = mstatus;
	joinbss_rpt.ps_qos_info = ps_qosinfo;
	joinbss_rpt.bssid[0] = mac->bssid[0];
	joinbss_rpt.bssid[1] = mac->bssid[1];
	joinbss_rpt.bssid[2] = mac->bssid[2];
	joinbss_rpt.bssid[3] = mac->bssid[3];
	joinbss_rpt.bssid[4] = mac->bssid[4];
	joinbss_rpt.bssid[5] = mac->bssid[5];
	FUNC0((u8 *)(&joinbss_rpt) + 8, 0, 16,
			mac->vif->bss_conf.beacon_int);
	FUNC0((u8 *)(&joinbss_rpt) + 10, 0, 16, mac->assoc_id);

	FUNC1(hw, FW_H2C_JOINBSSRPT, (u8 *)&joinbss_rpt);
}