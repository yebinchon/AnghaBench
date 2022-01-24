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
typedef  int u8 ;
typedef  int u16 ;
struct tx_desc_8723be {int dummy; } ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct rtlwifi_tx_info {int dummy; } ;
struct rtl_tcb_desc {scalar_t__ packet_bw; int /*<<< orphan*/  mac_id; scalar_t__ ratr_index; scalar_t__ use_driver_rate; scalar_t__ disable_ratefallback; scalar_t__ tx_enable_sw_calc_duration; scalar_t__ rts_use_shortgi; scalar_t__ rts_use_shortpreamble; int /*<<< orphan*/  rts_rate; int /*<<< orphan*/  rts_sc; scalar_t__ cts_enable; scalar_t__ rts_enable; scalar_t__ use_shortpreamble; scalar_t__ use_shortgi; int /*<<< orphan*/  hw_rate; scalar_t__ empkt_num; } ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct rtl_mac {scalar_t__ opmode; int bw_40; int cur_40_prime_sc; scalar_t__ rdg_en; } ;
struct rtl_hal {scalar_t__ earlymode_enable; } ;
struct TYPE_4__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct TYPE_3__ {int cap; int ampdu_density; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; } ;
struct ieee80211_key_conf {int cipher; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; int seq_ctrl; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  DESC92C_RATE54M ; 
 int /*<<< orphan*/  DESC92C_RATEMCS0 ; 
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
 int /*<<< orphan*/  FUNC1 (struct rtl_tcb_desc*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,struct rtl_tcb_desc*) ; 
 struct rtl_hal* FUNC16 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC17 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC20 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC21 (struct rtl_tcb_desc*,int*,struct ieee80211_hw*,struct rtlwifi_tx_info*) ; 
 struct rtlwifi_tx_info* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
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
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC58 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC59 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC60 (struct sk_buff*,scalar_t__) ; 

void FUNC61(struct ieee80211_hw *hw,
			    struct ieee80211_hdr *hdr, u8 *pdesc8,
			    u8 *txbd, struct ieee80211_tx_info *info,
			    struct ieee80211_sta *sta, struct sk_buff *skb,
			    u8 hw_queue, struct rtl_tcb_desc *ptcb_desc)
{
	struct rtl_priv *rtlpriv = FUNC20(hw);
	struct rtl_mac *mac = FUNC17(FUNC20(hw));
	struct rtl_pci *rtlpci = FUNC18(FUNC19(hw));
	struct rtl_hal *rtlhal = FUNC16(rtlpriv);
	struct rtlwifi_tx_info *tx_info = FUNC22(skb);
	__le32 *pdesc = (__le32 *)pdesc8;
	u16 seq_number;
	__le16 fc = hdr->frame_control;
	unsigned int buf_len = 0;
	unsigned int skb_len = skb->len;
	u8 fw_qsel = FUNC2(skb, hw_queue);
	bool firstseg = ((hdr->seq_ctrl &
			    FUNC4(IEEE80211_SCTL_FRAG)) == 0);
	bool lastseg = ((hdr->frame_control &
			   FUNC4(IEEE80211_FCTL_MOREFRAGS)) == 0);
	dma_addr_t mapping;
	u8 bw_40 = 0;
	u8 short_gi = 0;

	if (mac->opmode == NL80211_IFTYPE_STATION) {
		bw_40 = mac->bw_40;
	} else if (mac->opmode == NL80211_IFTYPE_AP ||
		mac->opmode == NL80211_IFTYPE_ADHOC) {
		if (sta)
			bw_40 = sta->ht_cap.cap &
				IEEE80211_HT_CAP_SUP_WIDTH_20_40;
	}
	seq_number = (FUNC11(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4;
	FUNC15(hw, info, sta, skb, ptcb_desc);
	/* reserve 8 byte for AMPDU early mode */
	if (rtlhal->earlymode_enable) {
		FUNC60(skb, EM_HDR_LEN);
		FUNC12(skb->data, 0, EM_HDR_LEN);
	}
	buf_len = skb->len;
	mapping = FUNC14(rtlpci->pdev, skb->data, skb->len,
				 PCI_DMA_TODEVICE);
	if (FUNC13(rtlpci->pdev, mapping)) {
		FUNC0(rtlpriv, COMP_SEND, DBG_TRACE, "DMA mapping error\n");
		return;
	}
	FUNC3(pdesc, sizeof(struct tx_desc_8723be));
	if (FUNC8(fc) || FUNC6(fc)) {
		firstseg = true;
		lastseg = true;
	}
	if (firstseg) {
		if (rtlhal->earlymode_enable) {
			FUNC43(pdesc, 1);
			FUNC42(pdesc, USB_HWDESC_HEADER_LEN +
					   EM_HDR_LEN);
			if (ptcb_desc->empkt_num) {
				FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
					 "Insert 8 byte.pTcb->EMPktNum:%d\n",
					  ptcb_desc->empkt_num);
				FUNC1(ptcb_desc,
							    (__le32 *)(skb->data));
			}
		} else {
			FUNC42(pdesc, USB_HWDESC_HEADER_LEN);
		}


		/* ptcb_desc->use_driver_rate = true; */
		FUNC57(pdesc, ptcb_desc->hw_rate);
		if (ptcb_desc->hw_rate > DESC92C_RATEMCS0)
			short_gi = (ptcb_desc->use_shortgi) ? 1 : 0;
		else
			short_gi = (ptcb_desc->use_shortpreamble) ? 1 : 0;

		FUNC29(pdesc, short_gi);

		if (info->flags & IEEE80211_TX_CTL_AMPDU) {
			FUNC23(pdesc, 1);
			FUNC39(pdesc, 0x14);
		}
		FUNC54(pdesc, seq_number);
		FUNC48(pdesc, ((ptcb_desc->rts_enable &&
						!ptcb_desc->cts_enable) ?
						1 : 0));
		FUNC33(pdesc, 0);
		FUNC26(pdesc, ((ptcb_desc->cts_enable) ?
					      1 : 0));

		FUNC49(pdesc, ptcb_desc->rts_rate);

		FUNC51(pdesc, ptcb_desc->rts_sc);
		FUNC52(pdesc,
			((ptcb_desc->rts_rate <= DESC92C_RATE54M) ?
			 (ptcb_desc->rts_use_shortpreamble ? 1 : 0) :
			 (ptcb_desc->rts_use_shortgi ? 1 : 0)));

		if (ptcb_desc->tx_enable_sw_calc_duration)
			FUNC41(pdesc, 1);

		if (bw_40) {
			if (ptcb_desc->packet_bw == HT_CHANNEL_WIDTH_20_40) {
				FUNC27(pdesc, 1);
				FUNC58(pdesc, 3);
			} else {
				FUNC27(pdesc, 0);
				FUNC58(pdesc, mac->cur_40_prime_sc);
			}
		} else {
			FUNC27(pdesc, 0);
			FUNC58(pdesc, 0);
		}

		FUNC37(pdesc, 0);
		FUNC44(pdesc, (u16)skb_len);
		if (sta) {
			u8 ampdu_density = sta->ht_cap.ampdu_density;
			FUNC24(pdesc, ampdu_density);
		}
		if (info->control.hw_key) {
			struct ieee80211_key_conf *keyconf =
						info->control.hw_key;
			switch (keyconf->cipher) {
			case WLAN_CIPHER_SUITE_WEP40:
			case WLAN_CIPHER_SUITE_WEP104:
			case WLAN_CIPHER_SUITE_TKIP:
				FUNC53(pdesc, 0x1);
				break;
			case WLAN_CIPHER_SUITE_CCMP:
				FUNC53(pdesc, 0x3);
				break;
			default:
				FUNC53(pdesc, 0x0);
				break;
			}
		}

		FUNC45(pdesc, fw_qsel);
		FUNC28(pdesc, 0x1F);
		FUNC50(pdesc, 0xF);
		FUNC30(pdesc, ptcb_desc->disable_ratefallback ?
					      1 : 0);
		FUNC59(pdesc, ptcb_desc->use_driver_rate ? 1 : 0);

		/* Set TxRate and RTSRate in TxDesc  */
		/* This prevent Tx initial rate of new-coming packets */
		/* from being overwritten by retried  packet rate.*/
		if (FUNC7(fc)) {
			if (mac->rdg_en) {
				FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
					 "Enable RDG function.\n");
				FUNC47(pdesc, 1);
				FUNC32(pdesc, 1);
			}
		}
		/* tx report */
		FUNC21(ptcb_desc, pdesc8, hw, tx_info);
	}

	FUNC31(pdesc, (firstseg ? 1 : 0));
	FUNC36(pdesc, (lastseg ? 1 : 0));
	FUNC56(pdesc, (u16)buf_len);
	FUNC55(pdesc, mapping);
	/* if (rtlpriv->dm.useramask) { */
	if (1) {
		FUNC46(pdesc, ptcb_desc->ratr_index);
		FUNC38(pdesc, ptcb_desc->mac_id);
	} else {
		FUNC46(pdesc, 0xC + ptcb_desc->ratr_index);
		FUNC38(pdesc, ptcb_desc->mac_id);
	}
	if (!FUNC7(fc))  {
		FUNC34(pdesc, 1);
		FUNC35(pdesc, 0);
	}
	FUNC40(pdesc, (lastseg ? 0 : 1));
	if (FUNC10(FUNC5(hdr)) ||
	    FUNC9(FUNC5(hdr))) {
		FUNC25(pdesc, 1);
	}

	FUNC0(rtlpriv, COMP_SEND, DBG_TRACE, "\n");
}