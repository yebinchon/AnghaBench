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
struct sk_buff {int dummy; } ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int assoc_id; int /*<<< orphan*/  bssid; int /*<<< orphan*/  mac_addr; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int BEACON_PG ; 
 int BT_QOS_NULL_PG ; 
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_POWER ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 int /*<<< orphan*/  H2C_8723B_RSVDPAGE ; 
 int NULL_PG ; 
 int PROBERSP_PG ; 
 int PSPOLL_PG ; 
 int QOS_NULL_PG ; 
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
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int TOTAL_RESERVED_PKT_LEN ; 
 struct sk_buff* FUNC13 (int) ; 
 int /*<<< orphan*/ * reserved_page_packet ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct ieee80211_hw*,struct sk_buff*) ; 
 struct rtl_mac* FUNC16 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC17 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ **,int) ; 

void FUNC19(struct ieee80211_hw *hw,
				  bool b_dl_finished)
{
	struct rtl_priv *rtlpriv = FUNC17(hw);
	struct rtl_mac *mac = FUNC16(FUNC17(hw));
	struct sk_buff *skb = NULL;

	u32 totalpacketlen;
	bool rtstatus;
	u8 u1rsvdpageloc[5] = { 0 };
	bool b_dlok = false;

	u8 *beacon;
	u8 *p_pspoll;
	u8 *nullfunc;
	u8 *p_probersp;
	u8 *qosnull;
	u8 *btqosnull;
	/*---------------------------------------------------------
	 *			(1) beacon
	 *---------------------------------------------------------
	 */
	beacon = &reserved_page_packet[BEACON_PG * 128];
	FUNC3(beacon, mac->mac_addr);
	FUNC4(beacon, mac->bssid);

	/*-------------------------------------------------------
	 *			(2) ps-poll
	 *-------------------------------------------------------
	 */
	p_pspoll = &reserved_page_packet[PSPOLL_PG * 128];
	FUNC5(p_pspoll, (mac->assoc_id | 0xc000));
	FUNC6(p_pspoll, mac->bssid);
	FUNC7(p_pspoll, mac->mac_addr);

	FUNC11(u1rsvdpageloc, PSPOLL_PG);

	/*--------------------------------------------------------
	 *			(3) null data
	 *--------------------------------------------------------
	 */
	nullfunc = &reserved_page_packet[NULL_PG * 128];
	FUNC2(nullfunc, mac->bssid);
	FUNC3(nullfunc, mac->mac_addr);
	FUNC4(nullfunc, mac->bssid);

	FUNC9(u1rsvdpageloc, NULL_PG);

	/*---------------------------------------------------------
	 *			(4) probe response
	 *---------------------------------------------------------
	 */
	p_probersp = &reserved_page_packet[PROBERSP_PG * 128];
	FUNC2(p_probersp, mac->bssid);
	FUNC3(p_probersp, mac->mac_addr);
	FUNC4(p_probersp, mac->bssid);

	FUNC10(u1rsvdpageloc, PROBERSP_PG);

	/*---------------------------------------------------------
	 *			(5) QoS Null
	 *---------------------------------------------------------
	 */
	qosnull = &reserved_page_packet[QOS_NULL_PG * 128];
	FUNC2(qosnull, mac->bssid);
	FUNC3(qosnull, mac->mac_addr);
	FUNC4(qosnull, mac->bssid);

	FUNC12(u1rsvdpageloc, QOS_NULL_PG);

	/*---------------------------------------------------------
	 *			(5) QoS Null
	 *---------------------------------------------------------
	 */
	btqosnull = &reserved_page_packet[BT_QOS_NULL_PG * 128];
	FUNC2(btqosnull, mac->bssid);
	FUNC3(btqosnull, mac->mac_addr);
	FUNC4(btqosnull, mac->bssid);

	FUNC8(u1rsvdpageloc, BT_QOS_NULL_PG);

	totalpacketlen = TOTAL_RESERVED_PKT_LEN;

	FUNC0(rtlpriv, COMP_CMD, DBG_LOUD,
		      "rtl8723be_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\n",
		      &reserved_page_packet[0], totalpacketlen);
	FUNC0(rtlpriv, COMP_CMD, DBG_DMESG,
		      "rtl8723be_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\n",
		      u1rsvdpageloc, sizeof(u1rsvdpageloc));

	skb = FUNC13(totalpacketlen);
	if (!skb)
		return;
	FUNC18(skb, &reserved_page_packet, totalpacketlen);

	rtstatus = FUNC15(hw, skb);

	if (rtstatus)
		b_dlok = true;

	if (b_dlok) {
		FUNC1(rtlpriv, COMP_POWER, DBG_LOUD,
			 "Set RSVD page location to Fw.\n");
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG, "H2C_RSVDPAGE:\n",
			      u1rsvdpageloc, sizeof(u1rsvdpageloc));
		FUNC14(hw, H2C_8723B_RSVDPAGE,
				       sizeof(u1rsvdpageloc), u1rsvdpageloc);
	} else
		FUNC1(rtlpriv, COMP_ERR, DBG_WARNING,
			 "Set RSVD page location to Fw FAIL!!!!!!.\n");
}