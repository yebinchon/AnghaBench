#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct tx_desc_92d {int dummy; } ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct rtl_tcb_desc {void* hw_rate; void* rts_rate; scalar_t__ ratr_index; scalar_t__ mac_id; scalar_t__ use_driver_rate; scalar_t__ disable_ratefallback; scalar_t__ packet_bw; scalar_t__ rts_use_shortgi; scalar_t__ rts_use_shortpreamble; int /*<<< orphan*/  rts_sc; scalar_t__ rts_stbc; scalar_t__ cts_enable; scalar_t__ rts_enable; scalar_t__ use_shortpreamble; scalar_t__ use_shortgi; scalar_t__ empkt_num; } ;
struct rtl_ps_ctl {scalar_t__ fwctrl_lps; } ;
struct TYPE_6__ {scalar_t__ useramask; } ;
struct rtl_priv {TYPE_3__ dm; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct rtl_mac {scalar_t__ opmode; int bw_40; int cur_40_prime_sc; scalar_t__ rdg_en; } ;
struct rtl_hal {scalar_t__ current_bandtype; scalar_t__ macphymode; scalar_t__ earlymode_enable; } ;
struct TYPE_5__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct TYPE_4__ {int ampdu_density; } ;
struct ieee80211_sta {scalar_t__ bandwidth; TYPE_1__ ht_cap; } ;
struct ieee80211_key_conf {int cipher; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; int seq_ctrl; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int __le16 ;

/* Variables and functions */
 scalar_t__ BAND_ON_5G ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int DESC_RATE54M ; 
 void* DESC_RATE6M ; 
 void* DESC_RATEMCS7 ; 
 scalar_t__ DUALMAC_DUALPHY ; 
 scalar_t__ EM_HDR_LEN ; 
 int /*<<< orphan*/  IEEE80211_FCTL_MOREFRAGS ; 
 int /*<<< orphan*/  IEEE80211_SCTL_FRAG ; 
 int IEEE80211_SCTL_SEQ ; 
 scalar_t__ IEEE80211_STA_RX_BW_40 ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int*,int) ; 
 int /*<<< orphan*/  FUNC17 (int*,int) ; 
 int /*<<< orphan*/  FUNC18 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int*,int) ; 
 int /*<<< orphan*/  FUNC20 (int*,int) ; 
 int /*<<< orphan*/  FUNC21 (int*,int) ; 
 int /*<<< orphan*/  FUNC22 (int*,int) ; 
 int /*<<< orphan*/  FUNC23 (int*,int) ; 
 int /*<<< orphan*/  FUNC24 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int*,int) ; 
 int /*<<< orphan*/  FUNC26 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int*,int) ; 
 int /*<<< orphan*/  FUNC28 (int*,int) ; 
 int /*<<< orphan*/  FUNC29 (int*,int) ; 
 int /*<<< orphan*/  FUNC30 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int*,int) ; 
 int /*<<< orphan*/  FUNC32 (int*,int) ; 
 int /*<<< orphan*/  FUNC33 (int*,int) ; 
 int /*<<< orphan*/  FUNC34 (int*,int) ; 
 int /*<<< orphan*/  FUNC35 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int*,int) ; 
 int /*<<< orphan*/  FUNC37 (int*,void*) ; 
 int /*<<< orphan*/  FUNC38 (int*,int) ; 
 int /*<<< orphan*/  FUNC39 (int*,int) ; 
 scalar_t__ USB_HWDESC_HEADER_LEN ; 
#define  WLAN_CIPHER_SUITE_CCMP 131 
#define  WLAN_CIPHER_SUITE_TKIP 130 
#define  WLAN_CIPHER_SUITE_WEP104 129 
#define  WLAN_CIPHER_SUITE_WEP40 128 
 int /*<<< orphan*/  FUNC40 (struct rtl_tcb_desc*,int*) ; 
 int FUNC41 (struct sk_buff*,int) ; 
 int FUNC42 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC43 (int) ; 
 scalar_t__ FUNC44 (int) ; 
 scalar_t__ FUNC45 (int) ; 
 int FUNC46 (int) ; 
 int /*<<< orphan*/  FUNC47 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC48 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (struct ieee80211_hw*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,struct rtl_tcb_desc*) ; 
 struct rtl_hal* FUNC51 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC52 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC53 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC54 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC55 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC56 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC57 (struct sk_buff*,scalar_t__) ; 

void FUNC58(struct ieee80211_hw *hw,
			  struct ieee80211_hdr *hdr, u8 *pdesc_tx,
			  u8 *pbd_desc_tx, struct ieee80211_tx_info *info,
			  struct ieee80211_sta *sta,
			  struct sk_buff *skb,
			  u8 hw_queue, struct rtl_tcb_desc *ptcb_desc)
{
	struct rtl_priv *rtlpriv = FUNC55(hw);
	struct rtl_mac *mac = FUNC52(FUNC55(hw));
	struct rtl_pci *rtlpci = FUNC53(FUNC54(hw));
	struct rtl_hal *rtlhal = FUNC51(rtlpriv);
	struct rtl_ps_ctl *ppsc = FUNC56(FUNC55(hw));
	u8 *pdesc = pdesc_tx;
	u16 seq_number;
	__le16 fc = hdr->frame_control;
	unsigned int buf_len = 0;
	unsigned int skb_len = skb->len;
	u8 fw_qsel = FUNC41(skb, hw_queue);
	bool firstseg = ((hdr->seq_ctrl &
			FUNC42(IEEE80211_SCTL_FRAG)) == 0);
	bool lastseg = ((hdr->frame_control &
			FUNC42(IEEE80211_FCTL_MOREFRAGS)) == 0);
	dma_addr_t mapping;
	u8 bw_40 = 0;

	if (mac->opmode == NL80211_IFTYPE_STATION) {
		bw_40 = mac->bw_40;
	} else if (mac->opmode == NL80211_IFTYPE_AP ||
		mac->opmode == NL80211_IFTYPE_ADHOC) {
		if (sta)
			bw_40 = sta->bandwidth >= IEEE80211_STA_RX_BW_40;
	}
	seq_number = (FUNC46(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4;
	FUNC50(hw, info, sta, skb, ptcb_desc);
	/* reserve 8 byte for AMPDU early mode */
	if (rtlhal->earlymode_enable) {
		FUNC57(skb, EM_HDR_LEN);
		FUNC47(skb->data, 0, EM_HDR_LEN);
	}
	buf_len = skb->len;
	mapping = FUNC49(rtlpci->pdev, skb->data, skb->len,
				 PCI_DMA_TODEVICE);
	if (FUNC48(rtlpci->pdev, mapping)) {
		FUNC1(rtlpriv, COMP_SEND, DBG_TRACE,
			 "DMA mapping error\n");
		return;
	}
	FUNC0(pdesc, sizeof(struct tx_desc_92d));
	if (FUNC45(fc) || FUNC43(fc)) {
		firstseg = true;
		lastseg = true;
	}
	if (firstseg) {
		if (rtlhal->earlymode_enable) {
			FUNC20(pdesc, 1);
			FUNC18(pdesc, USB_HWDESC_HEADER_LEN +
					   EM_HDR_LEN);
			if (ptcb_desc->empkt_num) {
				FUNC1(rtlpriv, COMP_SEND, DBG_LOUD,
					 "Insert 8 byte.pTcb->EMPktNum:%d\n",
					 ptcb_desc->empkt_num);
				FUNC40(ptcb_desc,
							  (u8 *)(skb->data));
			}
		} else {
			FUNC18(pdesc, USB_HWDESC_HEADER_LEN);
		}
		/* 5G have no CCK rate */
		if (rtlhal->current_bandtype == BAND_ON_5G)
			if (ptcb_desc->hw_rate < DESC_RATE6M)
				ptcb_desc->hw_rate = DESC_RATE6M;
		FUNC37(pdesc, ptcb_desc->hw_rate);
		if (ptcb_desc->use_shortgi || ptcb_desc->use_shortpreamble)
			FUNC7(pdesc, 1);

		if (rtlhal->macphymode == DUALMAC_DUALPHY &&
			ptcb_desc->hw_rate == DESC_RATEMCS7)
			FUNC7(pdesc, 1);

		if (info->flags & IEEE80211_TX_CTL_AMPDU) {
			FUNC2(pdesc, 1);
			FUNC16(pdesc, 0x14);
		}
		FUNC34(pdesc, seq_number);
		FUNC27(pdesc, ((ptcb_desc->rts_enable &&
				       !ptcb_desc->cts_enable) ? 1 : 0));
		FUNC12(pdesc, ((ptcb_desc->rts_enable
					  || ptcb_desc->cts_enable) ? 1 : 0));
		FUNC4(pdesc, ((ptcb_desc->cts_enable) ? 1 : 0));
		FUNC32(pdesc, ((ptcb_desc->rts_stbc) ? 1 : 0));
		/* 5G have no CCK rate */
		if (rtlhal->current_bandtype == BAND_ON_5G)
			if (ptcb_desc->rts_rate < DESC_RATE6M)
				ptcb_desc->rts_rate = DESC_RATE6M;
		FUNC28(pdesc, ptcb_desc->rts_rate);
		FUNC26(pdesc, 0);
		FUNC30(pdesc, ptcb_desc->rts_sc);
		FUNC31(pdesc, ((ptcb_desc->rts_rate <=
			DESC_RATE54M) ?
			(ptcb_desc->rts_use_shortpreamble ? 1 : 0) :
			(ptcb_desc->rts_use_shortgi ? 1 : 0)));
		if (bw_40) {
			if (ptcb_desc->packet_bw) {
				FUNC5(pdesc, 1);
				FUNC38(pdesc, 3);
			} else {
				FUNC5(pdesc, 0);
				FUNC38(pdesc,
							mac->cur_40_prime_sc);
			}
		} else {
			FUNC5(pdesc, 0);
			FUNC38(pdesc, 0);
		}
		FUNC14(pdesc, 0);
		FUNC21(pdesc, (u16) skb_len);
		if (sta) {
			u8 ampdu_density = sta->ht_cap.ampdu_density;
			FUNC3(pdesc, ampdu_density);
		}
		if (info->control.hw_key) {
			struct ieee80211_key_conf *keyconf;

			keyconf = info->control.hw_key;
			switch (keyconf->cipher) {
			case WLAN_CIPHER_SUITE_WEP40:
			case WLAN_CIPHER_SUITE_WEP104:
			case WLAN_CIPHER_SUITE_TKIP:
				FUNC33(pdesc, 0x1);
				break;
			case WLAN_CIPHER_SUITE_CCMP:
				FUNC33(pdesc, 0x3);
				break;
			default:
				FUNC33(pdesc, 0x0);
				break;

			}
		}
		FUNC19(pdesc, 0);
		FUNC23(pdesc, fw_qsel);
		FUNC6(pdesc, 0x1F);
		FUNC29(pdesc, 0xF);
		FUNC8(pdesc, ptcb_desc->disable_ratefallback ?
				       1 : 0);
		FUNC39(pdesc, ptcb_desc->use_driver_rate ? 1 : 0);

		/* Set TxRate and RTSRate in TxDesc  */
		/* This prevent Tx initial rate of new-coming packets */
		/* from being overwritten by retried  packet rate.*/
		if (!ptcb_desc->use_driver_rate) {
			FUNC28(pdesc, 0x08);
			/* SET_TX_DESC_TX_RATE(pdesc, 0x0b); */
		}
		if (FUNC44(fc)) {
			if (mac->rdg_en) {
				FUNC1(rtlpriv, COMP_SEND, DBG_TRACE,
					 "Enable RDG function\n");
				FUNC25(pdesc, 1);
				FUNC10(pdesc, 1);
			}
		}
	}

	FUNC9(pdesc, (firstseg ? 1 : 0));
	FUNC13(pdesc, (lastseg ? 1 : 0));
	FUNC36(pdesc, (u16) buf_len);
	FUNC35(pdesc, mapping);
	if (rtlpriv->dm.useramask) {
		FUNC24(pdesc, ptcb_desc->ratr_index);
		FUNC15(pdesc, ptcb_desc->mac_id);
	} else {
		FUNC24(pdesc, 0xC + ptcb_desc->ratr_index);
		FUNC15(pdesc, ptcb_desc->ratr_index);
	}
	if (FUNC44(fc))
		FUNC22(pdesc, 1);

	if ((!FUNC44(fc)) && ppsc->fwctrl_lps) {
		FUNC11(pdesc, 1);
		FUNC19(pdesc, 8);
	}
	FUNC17(pdesc, (lastseg ? 0 : 1));
	FUNC1(rtlpriv, COMP_SEND, DBG_TRACE, "\n");
}