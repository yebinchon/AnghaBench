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
typedef  int u8 ;
struct TYPE_2__ {long entry_min_undec_sm_pwdb; } ;
struct dig_t {scalar_t__ cursta_cstate; scalar_t__ dig_ext_port_stage; int cur_igvalue; scalar_t__ curmultista_cstate; long rssi_lowthresh; long rssi_highthresh; } ;
struct rtl_priv {TYPE_1__ dm; struct dig_t dm_digtable; } ;
struct rtl_mac {scalar_t__ opmode; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_DIG ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 scalar_t__ DIG_EXT_PORT_STAGE_0 ; 
 scalar_t__ DIG_EXT_PORT_STAGE_1 ; 
 scalar_t__ DIG_EXT_PORT_STAGE_2 ; 
 scalar_t__ DIG_EXT_PORT_STAGE_MAX ; 
 scalar_t__ DIG_MULTISTA_CONNECT ; 
 scalar_t__ DIG_STA_DISCONNECT ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_mac* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw)
{
	static u8 binitialized;
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_mac *mac = FUNC3(FUNC4(hw));
	struct dig_t *dm_digtable = &rtlpriv->dm_digtable;
	long rssi_strength = rtlpriv->dm.entry_min_undec_sm_pwdb;
	bool multi_sta = false;

	if (mac->opmode == NL80211_IFTYPE_ADHOC)
		multi_sta = true;

	if (!multi_sta || (dm_digtable->cursta_cstate != DIG_STA_DISCONNECT)) {
		binitialized = false;
		dm_digtable->dig_ext_port_stage = DIG_EXT_PORT_STAGE_MAX;
		return;
	} else if (!binitialized) {
		binitialized = true;
		dm_digtable->dig_ext_port_stage = DIG_EXT_PORT_STAGE_0;
		dm_digtable->cur_igvalue = 0x20;
		FUNC1(hw);
	}

	if (dm_digtable->curmultista_cstate == DIG_MULTISTA_CONNECT) {
		if ((rssi_strength < dm_digtable->rssi_lowthresh) &&
		    (dm_digtable->dig_ext_port_stage != DIG_EXT_PORT_STAGE_1)) {

			if (dm_digtable->dig_ext_port_stage ==
			    DIG_EXT_PORT_STAGE_2) {
				dm_digtable->cur_igvalue = 0x20;
				FUNC1(hw);
			}

			dm_digtable->dig_ext_port_stage = DIG_EXT_PORT_STAGE_1;
		} else if (rssi_strength > dm_digtable->rssi_highthresh) {
			dm_digtable->dig_ext_port_stage = DIG_EXT_PORT_STAGE_2;
			FUNC2(hw);
		}
	} else if (dm_digtable->dig_ext_port_stage != DIG_EXT_PORT_STAGE_0) {
		dm_digtable->dig_ext_port_stage = DIG_EXT_PORT_STAGE_0;
		dm_digtable->cur_igvalue = 0x20;
		FUNC1(hw);
	}

	FUNC0(rtlpriv, COMP_DIG, DBG_TRACE,
		 "curmultista_cstate = %x dig_ext_port_stage %x\n",
		 dm_digtable->curmultista_cstate,
		 dm_digtable->dig_ext_port_stage);
}