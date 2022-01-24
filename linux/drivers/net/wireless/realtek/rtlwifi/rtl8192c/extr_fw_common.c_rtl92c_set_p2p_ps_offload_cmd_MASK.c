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
typedef  int /*<<< orphan*/  u16 ;
struct rtl_p2p_ps_info {int opp_ps; int p2p_ps_state; int /*<<< orphan*/  noa_num; int /*<<< orphan*/  ctwindow; } ;
struct rtl_ps_ctl {struct rtl_p2p_ps_info p2p_ps_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct p2p_ps_offload_t {int ctwindow_en; int offload_en; int role; int discovery; int /*<<< orphan*/  allstasleep; } ;
struct rtl_hal {struct p2p_ps_offload_t p2p_ps_offload; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_FW ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  H2C_P2P_PS_OFFLOAD ; 
#define  P2P_PS_DISABLE 131 
#define  P2P_PS_ENABLE 130 
#define  P2P_PS_SCAN 129 
#define  P2P_PS_SCAN_DONE 128 
 int /*<<< orphan*/  P2P_ROLE_GO ; 
 int /*<<< orphan*/  REG_DUAL_TSF_RST ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_ps_offload_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC7 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl_priv*,struct rtl_p2p_ps_info*,struct p2p_ps_offload_t*) ; 

void FUNC10(struct ieee80211_hw *hw, u8 p2p_ps_state)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_ps_ctl *rtlps = FUNC7(FUNC6(hw));
	struct rtl_hal *rtlhal = FUNC5(FUNC6(hw));
	struct rtl_p2p_ps_info *p2pinfo = &(rtlps->p2p_ps_info);
	struct p2p_ps_offload_t *p2p_ps_offload = &rtlhal->p2p_ps_offload;
	u16	ctwindow;

	switch (p2p_ps_state) {
	case P2P_PS_DISABLE:
			FUNC1(rtlpriv, COMP_FW, DBG_LOUD,
				 "P2P_PS_DISABLE\n");
			FUNC2(p2p_ps_offload, 0, sizeof(*p2p_ps_offload));
			break;
	case P2P_PS_ENABLE:
			FUNC1(rtlpriv, COMP_FW, DBG_LOUD,
				 "P2P_PS_ENABLE\n");
			/* update CTWindow value. */
			if (p2pinfo->ctwindow > 0) {
				p2p_ps_offload->ctwindow_en = 1;
				ctwindow = p2pinfo->ctwindow;
				FUNC4(hw, ctwindow);
			}
			/* call refactored routine */
			FUNC9(rtlpriv, p2pinfo, p2p_ps_offload);

			if ((p2pinfo->opp_ps == 1) || (p2pinfo->noa_num > 0)) {
				/* rst p2p circuit */
				FUNC8(rtlpriv, REG_DUAL_TSF_RST,
					       FUNC0(4));

				p2p_ps_offload->offload_en = 1;

				if (P2P_ROLE_GO == rtlpriv->mac80211.p2p) {
					p2p_ps_offload->role = 1;
					p2p_ps_offload->allstasleep = 0;
				} else {
					p2p_ps_offload->role = 0;
				}

				p2p_ps_offload->discovery = 0;
			}
			break;
	case P2P_PS_SCAN:
			FUNC1(rtlpriv, COMP_FW, DBG_LOUD, "P2P_PS_SCAN\n");
			p2p_ps_offload->discovery = 1;
			break;
	case P2P_PS_SCAN_DONE:
			FUNC1(rtlpriv, COMP_FW, DBG_LOUD,
				 "P2P_PS_SCAN_DONE\n");
			p2p_ps_offload->discovery = 0;
			p2pinfo->p2p_ps_state = P2P_PS_ENABLE;
			break;
	default:
			break;
	}

	FUNC3(hw, H2C_P2P_PS_OFFLOAD, 1, (u8 *)p2p_ps_offload);

}