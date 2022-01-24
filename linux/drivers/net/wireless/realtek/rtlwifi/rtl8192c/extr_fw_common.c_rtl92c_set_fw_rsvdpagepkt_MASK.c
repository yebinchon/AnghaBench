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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u1rsvdpageloc ;
typedef  struct sk_buff sk_buff ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int assoc_id; int /*<<< orphan*/  bssid; int /*<<< orphan*/  mac_addr; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int BEACON_PG ; 
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_POWER ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 int /*<<< orphan*/  H2C_RSVDPAGE ; 
 int NULL_PG ; 
 int PROBERSP_PG ; 
 int PSPOLL_PG ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int TOTAL_RESERVED_PKT_LEN ; 
 struct sk_buff* FUNC11 (int) ; 
 int /*<<< orphan*/ * reserved_page_packet ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*,struct sk_buff*) ; 
 struct rtl_mac* FUNC14 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC15 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ **,int) ; 

void FUNC17(struct ieee80211_hw *hw,
	 bool (*cmd_send_packet)(struct ieee80211_hw *, struct sk_buff *))
{
	struct rtl_priv *rtlpriv = FUNC15(hw);
	struct rtl_mac *mac = FUNC14(FUNC15(hw));
	struct sk_buff *skb = NULL;

	u32 totalpacketlen;
	bool rtstatus;
	u8 u1rsvdpageloc[3] = { 0 };
	bool b_dlok = false;

	u8 *beacon;
	u8 *p_pspoll;
	u8 *nullfunc;
	u8 *p_probersp;
	/*---------------------------------------------------------
				(1) beacon
	---------------------------------------------------------*/
	beacon = &reserved_page_packet[BEACON_PG * 128];
	FUNC3(beacon, mac->mac_addr);
	FUNC4(beacon, mac->bssid);

	/*-------------------------------------------------------
				(2) ps-poll
	--------------------------------------------------------*/
	p_pspoll = &reserved_page_packet[PSPOLL_PG * 128];
	FUNC5(p_pspoll, (mac->assoc_id | 0xc000));
	FUNC6(p_pspoll, mac->bssid);
	FUNC7(p_pspoll, mac->mac_addr);

	FUNC10(u1rsvdpageloc, PSPOLL_PG);

	/*--------------------------------------------------------
				(3) null data
	---------------------------------------------------------*/
	nullfunc = &reserved_page_packet[NULL_PG * 128];
	FUNC2(nullfunc, mac->bssid);
	FUNC3(nullfunc, mac->mac_addr);
	FUNC4(nullfunc, mac->bssid);

	FUNC8(u1rsvdpageloc, NULL_PG);

	/*---------------------------------------------------------
				(4) probe response
	----------------------------------------------------------*/
	p_probersp = &reserved_page_packet[PROBERSP_PG * 128];
	FUNC2(p_probersp, mac->bssid);
	FUNC3(p_probersp, mac->mac_addr);
	FUNC4(p_probersp, mac->bssid);

	FUNC9(u1rsvdpageloc, PROBERSP_PG);

	totalpacketlen = TOTAL_RESERVED_PKT_LEN;

	FUNC0(rtlpriv, COMP_CMD, DBG_LOUD,
		      "rtl92c_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\n",
		      &reserved_page_packet[0], totalpacketlen);
	FUNC0(rtlpriv, COMP_CMD, DBG_DMESG,
		      "rtl92c_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\n",
		      u1rsvdpageloc, 3);

	skb = FUNC11(totalpacketlen);
	if (!skb)
		return;
	FUNC16(skb, &reserved_page_packet, totalpacketlen);

	if (cmd_send_packet)
		rtstatus = cmd_send_packet(hw, skb);
	else
		rtstatus = FUNC13(hw, skb);

	if (rtstatus)
		b_dlok = true;

	if (b_dlok) {
		FUNC1(rtlpriv, COMP_POWER, DBG_LOUD,
			 "Set RSVD page location to Fw.\n");
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG,
				"H2C_RSVDPAGE:\n",
				u1rsvdpageloc, 3);
		FUNC12(hw, H2C_RSVDPAGE,
				    sizeof(u1rsvdpageloc), u1rsvdpageloc);
	} else
		FUNC1(rtlpriv, COMP_ERR, DBG_WARNING,
			 "Set RSVD page location to Fw FAIL!!!!!!.\n");
}