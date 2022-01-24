#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct rtlwifi_tx_info {int dummy; } ;
struct rtl_tcb_desc {int use_driver_rate; scalar_t__ packet_bw; scalar_t__ ratr_index; scalar_t__ mac_id; scalar_t__ disable_ratefallback; scalar_t__ tx_enable_sw_calc_duration; scalar_t__ rts_use_shortgi; scalar_t__ rts_use_shortpreamble; int /*<<< orphan*/  rts_rate; int /*<<< orphan*/  rts_sc; scalar_t__ cts_enable; scalar_t__ rts_enable; scalar_t__ use_shortpreamble; scalar_t__ use_shortgi; int /*<<< orphan*/  hw_rate; scalar_t__ empkt_num; } ;
struct TYPE_5__ {scalar_t__ useramask; } ;
struct TYPE_6__ {scalar_t__ is_special_data; } ;
struct rtl_priv {TYPE_1__ dm; TYPE_2__ ra; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct rtl_mac {scalar_t__ opmode; int bw_40; int cur_40_prime_sc; scalar_t__ rdg_en; } ;
struct rtl_hal {scalar_t__ earlymode_enable; } ;
struct TYPE_8__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_4__ control; } ;
struct TYPE_7__ {int cap; int ampdu_density; } ;
struct ieee80211_sta {TYPE_3__ ht_cap; } ;
struct ieee80211_key_conf {int cipher; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; int seq_ctrl; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  DESC_RATE11M ; 
 int /*<<< orphan*/  DESC_RATE54M ; 
 int /*<<< orphan*/  DESC_RATEMCS0 ; 
 scalar_t__ EM_HDR_LEN ; 
 scalar_t__ HT_CHANNEL_WIDTH_20_40 ; 
 int /*<<< orphan*/  IEEE80211_FCTL_MOREFRAGS ; 
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ; 
 int /*<<< orphan*/  IEEE80211_SCTL_FRAG ; 
 int IEEE80211_SCTL_SEQ ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ USB_HWDESC_HEADER_LEN ; 
#define  WLAN_CIPHER_SUITE_CCMP 131 
#define  WLAN_CIPHER_SUITE_TKIP 130 
#define  WLAN_CIPHER_SUITE_WEP104 129 
#define  WLAN_CIPHER_SUITE_WEP40 128 
 int /*<<< orphan*/  FUNC1 (struct rtl_tcb_desc*,int*) ; 
 int FUNC2 (struct sk_buff*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,int*,int*,int,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,struct rtl_tcb_desc*) ; 
 struct rtl_hal* FUNC17 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC18 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC21 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC22 (struct rtl_tcb_desc*,int*,struct ieee80211_hw*,struct rtlwifi_tx_info*) ; 
 struct rtlwifi_tx_info* FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC56 (struct sk_buff*,scalar_t__) ; 

void FUNC57(struct ieee80211_hw *hw,
			  struct ieee80211_hdr *hdr, u8 *pdesc8,
			  u8 *pbd_desc_tx,
			  struct ieee80211_tx_info *info,
			  struct ieee80211_sta *sta,
			  struct sk_buff *skb,
			  u8 hw_queue, struct rtl_tcb_desc *ptcb_desc)
{
	struct rtl_priv *rtlpriv = FUNC21(hw);
	struct rtl_mac *mac = FUNC18(FUNC21(hw));
	struct rtl_pci *rtlpci = FUNC19(FUNC20(hw));
	struct rtl_hal *rtlhal = FUNC17(rtlpriv);
	struct rtlwifi_tx_info *tx_info = FUNC23(skb);
	u16 seq_number;
	__le16 fc = hdr->frame_control;
	unsigned int buf_len;
	u8 fw_qsel = FUNC2(skb, hw_queue);
	bool firstseg = ((hdr->seq_ctrl &
			    FUNC3(IEEE80211_SCTL_FRAG)) == 0);
	bool lastseg = ((hdr->frame_control &
			   FUNC3(IEEE80211_FCTL_MOREFRAGS)) == 0);
	dma_addr_t mapping;
	u8 bw_40 = 0;
	u8 short_gi;
	__le32 *pdesc = (__le32 *)pdesc8;

	if (mac->opmode == NL80211_IFTYPE_STATION) {
		bw_40 = mac->bw_40;
	} else if (mac->opmode == NL80211_IFTYPE_AP ||
		   mac->opmode == NL80211_IFTYPE_ADHOC) {
		if (sta)
			bw_40 = sta->ht_cap.cap &
				IEEE80211_HT_CAP_SUP_WIDTH_20_40;
	}
	seq_number = (FUNC11(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4;
	FUNC16(hw, info, sta, skb, ptcb_desc);
	/* reserve 8 byte for AMPDU early mode */
	if (rtlhal->earlymode_enable) {
		FUNC56(skb, EM_HDR_LEN);
		FUNC12(skb->data, 0, EM_HDR_LEN);
	}
	buf_len = skb->len;
	mapping = FUNC14(rtlpci->pdev, skb->data, skb->len,
				 PCI_DMA_TODEVICE);
	if (FUNC13(rtlpci->pdev, mapping)) {
		FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
			 "DMA mapping error\n");
		return;
	}

	if (pbd_desc_tx != NULL)
		FUNC15(hw, pbd_desc_tx, pdesc8, hw_queue,
					    skb, mapping);

	if (FUNC8(fc) || FUNC5(fc)) {
		firstseg = true;
		lastseg = true;
	}
	if (firstseg) {
		if (rtlhal->earlymode_enable) {
			FUNC41(pdesc, 1);
			FUNC40(pdesc,
					   USB_HWDESC_HEADER_LEN + EM_HDR_LEN);
			if (ptcb_desc->empkt_num) {
				FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
					 "Insert 8 byte.pTcb->EMPktNum:%d\n",
					  ptcb_desc->empkt_num);
				FUNC1(ptcb_desc,
							  (u8 *)(skb->data));
			}
		} else {
			FUNC40(pdesc, USB_HWDESC_HEADER_LEN);
		}


		FUNC53(pdesc, ptcb_desc->hw_rate);

		if (FUNC7(fc)) {
			ptcb_desc->use_driver_rate = true;
		} else {
			if (rtlpriv->ra.is_special_data) {
				ptcb_desc->use_driver_rate = true;
				FUNC53(pdesc, DESC_RATE11M);
			} else {
				ptcb_desc->use_driver_rate = false;
			}
		}

		if (ptcb_desc->hw_rate > DESC_RATEMCS0)
			short_gi = (ptcb_desc->use_shortgi) ? 1 : 0;
		else
			short_gi = (ptcb_desc->use_shortpreamble) ? 1 : 0;

		if (info->flags & IEEE80211_TX_CTL_AMPDU) {
			FUNC24(pdesc, 1);
			FUNC37(pdesc, 0x14);
		}
		FUNC51(pdesc, seq_number);
		FUNC45(pdesc,
				       ((ptcb_desc->rts_enable &&
					 !ptcb_desc->cts_enable) ? 1 : 0));
		FUNC33(pdesc, 0);
		FUNC27(pdesc,
				     ((ptcb_desc->cts_enable) ? 1 : 0));

		FUNC46(pdesc, ptcb_desc->rts_rate);
		FUNC48(pdesc, ptcb_desc->rts_sc);
		FUNC49(pdesc,
				((ptcb_desc->rts_rate <= DESC_RATE54M) ?
				 (ptcb_desc->rts_use_shortpreamble ? 1 : 0) :
				 (ptcb_desc->rts_use_shortgi ? 1 : 0)));

		if (ptcb_desc->tx_enable_sw_calc_duration)
			FUNC39(pdesc, 1);

		if (bw_40) {
			if (ptcb_desc->packet_bw == HT_CHANNEL_WIDTH_20_40) {
				FUNC28(pdesc, 1);
				FUNC54(pdesc, 3);
			} else {
				FUNC28(pdesc, 0);
				FUNC54(pdesc,
							   mac->cur_40_prime_sc);
			}
		} else {
			FUNC28(pdesc, 0);
			FUNC54(pdesc, 0);
		}

		FUNC35(pdesc, 0);
		if (sta) {
			u8 ampdu_density = sta->ht_cap.ampdu_density;

			FUNC25(pdesc, ampdu_density);
		}
		if (info->control.hw_key) {
			struct ieee80211_key_conf *key = info->control.hw_key;

			switch (key->cipher) {
			case WLAN_CIPHER_SUITE_WEP40:
			case WLAN_CIPHER_SUITE_WEP104:
			case WLAN_CIPHER_SUITE_TKIP:
				FUNC50(pdesc, 0x1);
				break;
			case WLAN_CIPHER_SUITE_CCMP:
				FUNC50(pdesc, 0x3);
				break;
			default:
				FUNC50(pdesc, 0x0);
				break;
			}
		}

		FUNC42(pdesc, fw_qsel);
		FUNC29(pdesc, 0x1F);
		FUNC47(pdesc, 0xF);
		FUNC30(pdesc,
				       ptcb_desc->disable_ratefallback ? 1 : 0);
		FUNC55(pdesc, ptcb_desc->use_driver_rate ? 1 : 0);

		/*set_tx_desc_pwr_status(pdesc, pwr_status);*/
		/* Set TxRate and RTSRate in TxDesc  */
		/* This prevent Tx initial rate of new-coming packets */
		/* from being overwritten by retried  packet rate.*/
		if (!ptcb_desc->use_driver_rate) {
			/*set_tx_desc_rts_rate(pdesc, 0x08); */
			/* set_tx_desc_tx_rate(pdesc, 0x0b); */
		}
		if (FUNC6(fc)) {
			if (mac->rdg_en) {
				FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
					 "Enable RDG function.\n");
				FUNC44(pdesc, 1);
				FUNC32(pdesc, 1);
			}
		}
		/* tx report */
		FUNC22(ptcb_desc, pdesc8, hw, tx_info);
	}

	FUNC31(pdesc, (firstseg ? 1 : 0));
	FUNC34(pdesc, (lastseg ? 1 : 0));
	FUNC52(pdesc, mapping);
	if (rtlpriv->dm.useramask) {
		FUNC43(pdesc, ptcb_desc->ratr_index);
		FUNC36(pdesc, ptcb_desc->mac_id);
	} else {
		FUNC43(pdesc, 0xC + ptcb_desc->ratr_index);
		FUNC36(pdesc, ptcb_desc->ratr_index);
	}

	FUNC38(pdesc, (lastseg ? 0 : 1));
	if (FUNC10(FUNC4(hdr)) ||
	    FUNC9(FUNC4(hdr))) {
		FUNC26(pdesc, 1);
	}
	FUNC0(rtlpriv, COMP_SEND, DBG_TRACE, "\n");
}