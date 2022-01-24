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
typedef  int /*<<< orphan*/  u1rsvdpageloc2 ;
typedef  int /*<<< orphan*/  u1rsvdpageloc ;
struct sk_buff {int dummy; } ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int assoc_id; int /*<<< orphan*/  bssid; int /*<<< orphan*/  mac_addr; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ARPRESP_PG ; 
 int BEACON_PG ; 
 int BT_QOSNULL_PG ; 
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 int /*<<< orphan*/  GTKEXT_PG ; 
 int /*<<< orphan*/  H2C_8821AE_AOAC_RSVDPAGE ; 
 int /*<<< orphan*/  H2C_8821AE_RSVDPAGE ; 
 int NULL_PG ; 
 int PSPOLL_PG ; 
 int QOSNULL_PG ; 
 int /*<<< orphan*/  REMOTE_PG ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int TOTAL_RESERVED_PKT_LEN_8812 ; 
 struct sk_buff* FUNC15 (int) ; 
 int /*<<< orphan*/ * reserved_page_packet_8812 ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct ieee80211_hw*,struct sk_buff*) ; 
 struct rtl_mac* FUNC18 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC19 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int /*<<< orphan*/ **,int) ; 

void FUNC21(struct ieee80211_hw *hw,
				  bool b_dl_finished, bool dl_whole_packets)
{
	struct rtl_priv *rtlpriv = FUNC19(hw);
	struct rtl_mac *mac = FUNC18(rtlpriv);
	struct sk_buff *skb = NULL;
	u32 totalpacketlen;
	bool rtstatus;
	u8 u1rsvdpageloc[5] = { 0 };
	u8 u1rsvdpageloc2[7] = { 0 };
	bool b_dlok = false;
	u8 *beacon;
	u8 *p_pspoll;
	u8 *nullfunc;
	u8 *qosnull;
	u8 *btqosnull;
	u8 *arpresp;

	/*---------------------------------------------------------
	 *			(1) beacon
	 *---------------------------------------------------------
	 */
	beacon = &reserved_page_packet_8812[BEACON_PG * 512];
	FUNC3(beacon, mac->mac_addr);
	FUNC4(beacon, mac->bssid);

	if (b_dl_finished) {
		totalpacketlen = 512 - 40;
		goto out;
	}
	/*-------------------------------------------------------
	 *			(2) ps-poll
	 *--------------------------------------------------------
	 */
	p_pspoll = &reserved_page_packet_8812[PSPOLL_PG * 512];
	FUNC5(p_pspoll, (mac->assoc_id | 0xc000));
	FUNC6(p_pspoll, mac->bssid);
	FUNC7(p_pspoll, mac->mac_addr);

	FUNC13(u1rsvdpageloc, PSPOLL_PG);

	/*--------------------------------------------------------
	 *			(3) null data
	 *---------------------------------------------------------
	 */
	nullfunc = &reserved_page_packet_8812[NULL_PG * 512];
	FUNC2(nullfunc, mac->bssid);
	FUNC3(nullfunc, mac->mac_addr);
	FUNC4(nullfunc, mac->bssid);

	FUNC12(u1rsvdpageloc, NULL_PG);

	/*---------------------------------------------------------
	 *			(4) Qos null data
	 *----------------------------------------------------------
	 */
	qosnull = &reserved_page_packet_8812[QOSNULL_PG * 512];
	FUNC2(qosnull, mac->bssid);
	FUNC3(qosnull, mac->mac_addr);
	FUNC4(qosnull, mac->bssid);

	FUNC14(u1rsvdpageloc, QOSNULL_PG);

	/*---------------------------------------------------------
	 *			(5) BT Qos null data
	 *----------------------------------------------------------
	 */
	btqosnull = &reserved_page_packet_8812[BT_QOSNULL_PG * 512];
	FUNC2(btqosnull, mac->bssid);
	FUNC3(btqosnull, mac->mac_addr);
	FUNC4(btqosnull, mac->bssid);

	FUNC11(u1rsvdpageloc, BT_QOSNULL_PG);

	if (!dl_whole_packets) {
		totalpacketlen = 512 * (BT_QOSNULL_PG + 1) - 40;
		goto out;
	}
	/*---------------------------------------------------------
	 *			(6) ARP Resp
	 *----------------------------------------------------------
	 */
	arpresp = &reserved_page_packet_8812[ARPRESP_PG * 512];
	FUNC2(arpresp, mac->bssid);
	FUNC3(arpresp, mac->mac_addr);
	FUNC4(arpresp, mac->bssid);

	FUNC8(u1rsvdpageloc2, ARPRESP_PG);

	/*---------------------------------------------------------
	 *			(7) Remote Wake Ctrl
	 *----------------------------------------------------------
	 */
	FUNC10(u1rsvdpageloc2,
								REMOTE_PG);

	/*---------------------------------------------------------
	 *			(8) GTK Ext Memory
	 *----------------------------------------------------------
	 */
	FUNC9(u1rsvdpageloc2, GTKEXT_PG);

	totalpacketlen = TOTAL_RESERVED_PKT_LEN_8812 - 40;

out:
	FUNC0(rtlpriv, COMP_CMD, DBG_LOUD,
		      "rtl8812ae_set_fw_rsvdpagepkt(): packet data\n",
		      &reserved_page_packet_8812[0], totalpacketlen);

	skb = FUNC15(totalpacketlen);
	if (!skb)
		return;
	FUNC20(skb, &reserved_page_packet_8812, totalpacketlen);

	rtstatus = FUNC17(hw, skb);

	if (rtstatus)
		b_dlok = true;

	if (!b_dl_finished && b_dlok) {
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG,
			      "H2C_RSVDPAGE:\n", u1rsvdpageloc, 5);
		FUNC16(hw, H2C_8821AE_RSVDPAGE,
				       sizeof(u1rsvdpageloc), u1rsvdpageloc);
		if (dl_whole_packets) {
			FUNC0(rtlpriv, COMP_CMD, DBG_DMESG,
				      "wowlan H2C_RSVDPAGE:\n", u1rsvdpageloc2, 7);
			FUNC16(hw, H2C_8821AE_AOAC_RSVDPAGE,
					       sizeof(u1rsvdpageloc2), u1rsvdpageloc2);
		}
	}

	if (!b_dlok)
		FUNC1(rtlpriv, COMP_ERR, DBG_WARNING,
			 "Set RSVD page location to Fw FAIL!!!!!!.\n");
}