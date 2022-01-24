#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u16 ;
struct sk_buff {int len; } ;
struct rtl_tcb_desc {scalar_t__ ratr_index; scalar_t__ mac_id; scalar_t__ use_driver_rate; scalar_t__ rts_use_shortgi; scalar_t__ rts_use_shortpreamble; int /*<<< orphan*/  rts_rate; int /*<<< orphan*/  rts_sc; scalar_t__ rts_stbc; scalar_t__ cts_enable; scalar_t__ rts_enable; scalar_t__ use_shortpreamble; scalar_t__ use_shortgi; int /*<<< orphan*/  hw_rate; } ;
struct rtl_ps_ctl {scalar_t__ fwctrl_lps; scalar_t__ leisure_ps; } ;
struct TYPE_12__ {scalar_t__ useramask; } ;
struct rtl_priv {TYPE_6__ dm; } ;
struct rtl_mac {int cur_40_prime_sc; scalar_t__ rdg_en; int /*<<< orphan*/  bssid; int /*<<< orphan*/  vif; scalar_t__ bw_40; TYPE_3__* tids; } ;
struct TYPE_11__ {struct ieee80211_key_conf* hw_key; TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_5__ control; } ;
struct TYPE_10__ {size_t ampdu_density; } ;
struct ieee80211_sta {TYPE_4__ ht_cap; } ;
struct ieee80211_key_conf {int cipher; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; int /*<<< orphan*/  frame_control; } ;
typedef  enum rtl_desc_qsel { ____Placeholder_rtl_desc_qsel } rtl_desc_qsel ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_8__ {scalar_t__ agg_state; } ;
struct TYPE_9__ {TYPE_2__ agg; } ;
struct TYPE_7__ {size_t flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  DESC_RATE54M ; 
 size_t IEEE80211_QOS_CTL_TID_MASK ; 
 int IEEE80211_SCTL_SEQ ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 size_t IEEE80211_TX_RC_40_MHZ_WIDTH ; 
 size_t IEEE80211_TX_RC_DUP_DATA ; 
 scalar_t__ RTL_AGG_ON ; 
 int /*<<< orphan*/  RTL_DUMMY_OFFSET ; 
 int /*<<< orphan*/  RTL_TX_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
#define  WLAN_CIPHER_SUITE_CCMP 131 
#define  WLAN_CIPHER_SUITE_TKIP 130 
#define  WLAN_CIPHER_SUITE_WEP104 129 
#define  WLAN_CIPHER_SUITE_WEP40 128 
 int FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hdr*) ; 
 size_t* FUNC6 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,struct rtl_tcb_desc*) ; 
 struct rtl_mac* FUNC16 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC17 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC18 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC55 (struct sk_buff*) ; 
 size_t* FUNC56 (struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC57(struct ieee80211_hw *hw,
			  struct ieee80211_hdr *hdr, u8 *pdesc_tx,
			  u8 *pbd_desc_tx, struct ieee80211_tx_info *info,
			  struct ieee80211_sta *sta,
			  struct sk_buff *skb,
			  u8 queue_index,
			  struct rtl_tcb_desc *tcb_desc)
{
	struct rtl_priv *rtlpriv = FUNC17(hw);
	struct rtl_mac *mac = FUNC16(FUNC17(hw));
	struct rtl_ps_ctl *ppsc = FUNC18(FUNC17(hw));
	bool defaultadapter = true;
	u8 *qc = FUNC6(hdr);
	u8 tid = qc[0] & IEEE80211_QOS_CTL_TID_MASK;
	u16 seq_number;
	__le16 fc = hdr->frame_control;
	u8 rate_flag = info->control.rates[0].flags;
	u16 pktlen = skb->len;
	enum rtl_desc_qsel fw_qsel = FUNC1(hw, fc,
						FUNC55(skb));
	u8 *txdesc8;
	__le32 *txdesc;

	seq_number = (FUNC11(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4;
	FUNC15(hw, info, sta, skb, tcb_desc);
	txdesc8 = FUNC56(skb, RTL_TX_HEADER_SIZE);
	txdesc = (__le32 *)txdesc8;
	FUNC12(txdesc, 0, RTL_TX_HEADER_SIZE);
	FUNC39(txdesc, pktlen);
	FUNC32(txdesc, 0);
	FUNC38(txdesc, RTL_DUMMY_OFFSET);
	FUNC36(txdesc, RTL_TX_HEADER_SIZE);
	FUNC53(txdesc, tcb_desc->hw_rate);
	if (tcb_desc->use_shortgi || tcb_desc->use_shortpreamble)
		FUNC27(txdesc, 1);
	if (mac->tids[tid].agg.agg_state == RTL_AGG_ON &&
		    info->flags & IEEE80211_TX_CTL_AMPDU) {
		FUNC20(txdesc, 1);
		FUNC34(txdesc, 0x14);
	} else {
		FUNC19(txdesc, 1);
	}
	FUNC52(txdesc, seq_number);
	FUNC45(txdesc,
			       ((tcb_desc->rts_enable &&
				!tcb_desc->cts_enable) ? 1 : 0));
	FUNC30(txdesc,
				  ((tcb_desc->rts_enable ||
				   tcb_desc->cts_enable) ? 1 : 0));
	FUNC23(txdesc, ((tcb_desc->cts_enable) ? 1 : 0));
	FUNC50(txdesc, ((tcb_desc->rts_stbc) ? 1 : 0));
	FUNC46(txdesc, tcb_desc->rts_rate);
	FUNC44(txdesc, 0);
	FUNC48(txdesc, tcb_desc->rts_sc);
	FUNC49(txdesc,
			      ((tcb_desc->rts_rate <= DESC_RATE54M) ?
			       (tcb_desc->rts_use_shortpreamble ? 1 : 0)
			       : (tcb_desc->rts_use_shortgi ? 1 : 0)));
	if (mac->bw_40) {
		if (rate_flag & IEEE80211_TX_RC_DUP_DATA) {
			FUNC24(txdesc, 1);
			FUNC26(txdesc, 3);
		} else if(rate_flag & IEEE80211_TX_RC_40_MHZ_WIDTH){
			FUNC24(txdesc, 1);
			FUNC26(txdesc, mac->cur_40_prime_sc);
		} else {
			FUNC24(txdesc, 0);
			FUNC26(txdesc, 0);
		}
	} else {
		FUNC24(txdesc, 0);
		FUNC26(txdesc, 0);
	}
	FUNC13();
	sta = FUNC4(mac->vif, mac->bssid);
	if (sta) {
		u8 ampdu_density = sta->ht_cap.ampdu_density;

		FUNC21(txdesc, ampdu_density);
	}
	FUNC14();
	if (info->control.hw_key) {
		struct ieee80211_key_conf *keyconf = info->control.hw_key;

		switch (keyconf->cipher) {
		case WLAN_CIPHER_SUITE_WEP40:
		case WLAN_CIPHER_SUITE_WEP104:
		case WLAN_CIPHER_SUITE_TKIP:
			FUNC51(txdesc, 0x1);
			break;
		case WLAN_CIPHER_SUITE_CCMP:
			FUNC51(txdesc, 0x3);
			break;
		default:
			FUNC51(txdesc, 0x0);
			break;
		}
	}
	FUNC37(txdesc, 0);
	FUNC41(txdesc, fw_qsel);
	FUNC25(txdesc, 0x1F);
	FUNC47(txdesc, 0xF);
	FUNC28(txdesc, 0);
	FUNC54(txdesc, tcb_desc->use_driver_rate ? 1 : 0);
	if (FUNC8(fc)) {
		if (mac->rdg_en) {
			FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
				 "Enable RDG function\n");
			FUNC43(txdesc, 1);
			FUNC29(txdesc, 1);
		}
	}
	if (rtlpriv->dm.useramask) {
		FUNC42(txdesc, tcb_desc->ratr_index);
		FUNC33(txdesc, tcb_desc->mac_id);
	} else {
		FUNC42(txdesc, 0xC + tcb_desc->ratr_index);
		FUNC33(txdesc, tcb_desc->ratr_index);
	}
	if ((!FUNC8(fc)) && ppsc->leisure_ps &&
	      ppsc->fwctrl_lps) {
		FUNC31(txdesc, 1);
		FUNC37(txdesc, 8);
		if (!defaultadapter)
			FUNC40(txdesc, 1);
	}
	if (FUNC7(fc))
		FUNC35(txdesc, 1);
	if (FUNC10(FUNC5(hdr)) ||
	    FUNC9(FUNC5(hdr)))
		FUNC22(txdesc, 1);
	FUNC2(txdesc);
	FUNC3(txdesc);
	FUNC0(rtlpriv, COMP_SEND, DBG_TRACE, "==>\n");
}