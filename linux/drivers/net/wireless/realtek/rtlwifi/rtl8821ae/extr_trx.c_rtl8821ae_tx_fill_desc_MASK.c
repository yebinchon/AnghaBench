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
struct tx_desc_8821ae {int dummy; } ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct rtlwifi_tx_info {int dummy; } ;
struct rtl_tcb_desc {int /*<<< orphan*/  mac_id; scalar_t__ ratr_index; scalar_t__ use_driver_rate; scalar_t__ disable_ratefallback; scalar_t__ tx_enable_sw_calc_duration; scalar_t__ rts_use_shortgi; scalar_t__ rts_use_shortpreamble; int /*<<< orphan*/  rts_rate; int /*<<< orphan*/  rts_sc; scalar_t__ cts_enable; scalar_t__ rts_enable; scalar_t__ use_shortpreamble; scalar_t__ use_shortgi; int /*<<< orphan*/  hw_rate; scalar_t__ empkt_num; } ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct rtl_mac {scalar_t__ rdg_en; } ;
struct rtl_hal {scalar_t__ earlymode_enable; } ;
struct TYPE_4__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct TYPE_3__ {int ampdu_density; } ;
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
 int /*<<< orphan*/  DESC_RATE54M ; 
 int /*<<< orphan*/  DESC_RATEMCS0 ; 
 scalar_t__ EM_HDR_LEN ; 
 int /*<<< orphan*/  IEEE80211_FCTL_MOREFRAGS ; 
 int /*<<< orphan*/  IEEE80211_SCTL_FRAG ; 
 int IEEE80211_SCTL_SEQ ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ USB_HWDESC_HEADER_LEN ; 
#define  WLAN_CIPHER_SUITE_CCMP 131 
#define  WLAN_CIPHER_SUITE_TKIP 130 
#define  WLAN_CIPHER_SUITE_WEP104 129 
#define  WLAN_CIPHER_SUITE_WEP40 128 
 int FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,struct rtl_tcb_desc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct rtl_tcb_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*,struct rtl_tcb_desc*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_hw*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,struct rtl_tcb_desc*) ; 
 struct rtl_hal* FUNC19 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC20 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC23 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC24 (struct rtl_tcb_desc*,int*,struct ieee80211_hw*,struct rtlwifi_tx_info*) ; 
 struct rtlwifi_tx_info* FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC58 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC59 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC60 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC61 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC62 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC63 (struct sk_buff*,scalar_t__) ; 

void FUNC64(struct ieee80211_hw *hw,
			    struct ieee80211_hdr *hdr, u8 *pdesc8, u8 *txbd,
			    struct ieee80211_tx_info *info,
			    struct ieee80211_sta *sta,
			    struct sk_buff *skb,
			    u8 hw_queue, struct rtl_tcb_desc *ptcb_desc)
{
	struct rtl_priv *rtlpriv = FUNC23(hw);
	struct rtl_mac *mac = FUNC20(FUNC23(hw));
	struct rtl_pci *rtlpci = FUNC21(FUNC22(hw));
	struct rtl_hal *rtlhal = FUNC19(rtlpriv);
	struct rtlwifi_tx_info *tx_info = FUNC25(skb);
	u16 seq_number;
	__le16 fc = hdr->frame_control;
	unsigned int buf_len = 0;
	unsigned int skb_len = skb->len;
	u8 fw_qsel = FUNC1(skb, hw_queue);
	bool firstseg = ((hdr->seq_ctrl &
			  FUNC3(IEEE80211_SCTL_FRAG)) == 0);
	bool lastseg = ((hdr->frame_control &
			 FUNC3(IEEE80211_FCTL_MOREFRAGS)) == 0);
	dma_addr_t mapping;
	u8 short_gi = 0;
	bool tmp_bool;
	__le32 *pdesc = (__le32 *)pdesc8;

	seq_number = (FUNC10(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4;
	FUNC18(hw, info, sta, skb, ptcb_desc);
	/* reserve 8 byte for AMPDU early mode */
	if (rtlhal->earlymode_enable) {
		FUNC63(skb, EM_HDR_LEN);
		FUNC11(skb->data, 0, EM_HDR_LEN);
	}
	buf_len = skb->len;
	mapping = FUNC13(rtlpci->pdev, skb->data, skb->len,
				 PCI_DMA_TODEVICE);
	if (FUNC12(rtlpci->pdev, mapping)) {
		FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
			 "DMA mapping error\n");
		return;
	}
	FUNC2(pdesc, sizeof(struct tx_desc_8821ae));
	if (FUNC7(fc) || FUNC5(fc)) {
		firstseg = true;
		lastseg = true;
	}
	if (firstseg) {
		if (rtlhal->earlymode_enable) {
			FUNC46(pdesc, 1);
			FUNC45(pdesc, USB_HWDESC_HEADER_LEN +
					   EM_HDR_LEN);
			if (ptcb_desc->empkt_num) {
				FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
					 "Insert 8 byte.pTcb->EMPktNum:%d\n",
					  ptcb_desc->empkt_num);
				FUNC16(ptcb_desc,
							   (__le32 *)skb->data);
			}
		} else {
			FUNC45(pdesc, USB_HWDESC_HEADER_LEN);
		}


		/* ptcb_desc->use_driver_rate = true; */
		FUNC60(pdesc, ptcb_desc->hw_rate);
		if (ptcb_desc->hw_rate > DESC_RATEMCS0)
			short_gi = (ptcb_desc->use_shortgi) ? 1 : 0;
		else
			short_gi = (ptcb_desc->use_shortpreamble) ? 1 : 0;

		FUNC32(pdesc, short_gi);

		if (info->flags & IEEE80211_TX_CTL_AMPDU) {
			FUNC26(pdesc, 1);
			FUNC42(pdesc, 0x1f);
		}
		FUNC57(pdesc, seq_number);
		FUNC51(pdesc,
				       ((ptcb_desc->rts_enable &&
					!ptcb_desc->cts_enable) ? 1 : 0));
		FUNC36(pdesc, 0);
		FUNC29(pdesc, ((ptcb_desc->cts_enable) ? 1 : 0));

		FUNC52(pdesc, ptcb_desc->rts_rate);
		FUNC54(pdesc, ptcb_desc->rts_sc);
		tmp_bool = ((ptcb_desc->rts_rate <= DESC_RATE54M) ?
			    (ptcb_desc->rts_use_shortpreamble ? 1 : 0) :
			    (ptcb_desc->rts_use_shortgi ? 1 : 0));
		FUNC55(pdesc, tmp_bool);

		if (ptcb_desc->tx_enable_sw_calc_duration)
			FUNC44(pdesc, 1);

		FUNC30(pdesc,
				    FUNC14(hw, ptcb_desc));

		FUNC61(pdesc,
					   FUNC17(hw, ptcb_desc));

		FUNC40(pdesc, 0);
		FUNC47(pdesc, (u16)skb_len);
		if (sta) {
			u8 ampdu_density = sta->ht_cap.ampdu_density;

			FUNC27(pdesc, ampdu_density);
		}
		if (info->control.hw_key) {
			struct ieee80211_key_conf *keyconf =
				info->control.hw_key;
			switch (keyconf->cipher) {
			case WLAN_CIPHER_SUITE_WEP40:
			case WLAN_CIPHER_SUITE_WEP104:
			case WLAN_CIPHER_SUITE_TKIP:
				FUNC56(pdesc, 0x1);
				break;
			case WLAN_CIPHER_SUITE_CCMP:
				FUNC56(pdesc, 0x3);
				break;
			default:
				FUNC56(pdesc, 0x0);
				break;
			}
		}

		FUNC48(pdesc, fw_qsel);
		FUNC31(pdesc, 0x1F);
		FUNC53(pdesc, 0xF);
		FUNC33(pdesc, ptcb_desc->disable_ratefallback ?
				       1 : 0);
		FUNC62(pdesc, ptcb_desc->use_driver_rate ? 1 : 0);

		if (FUNC6(fc)) {
			if (mac->rdg_en) {
				FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
					 "Enable RDG function.\n");
				FUNC50(pdesc, 1);
				FUNC35(pdesc, 1);
			}
		}
		/* tx report */
		FUNC24(ptcb_desc, pdesc8, hw, tx_info);
	}

	FUNC34(pdesc, (firstseg ? 1 : 0));
	FUNC39(pdesc, (lastseg ? 1 : 0));
	FUNC59(pdesc, buf_len);
	FUNC58(pdesc, mapping);
	/* if (rtlpriv->dm.useramask) { */
	if (1) {
		FUNC49(pdesc, ptcb_desc->ratr_index);
		FUNC41(pdesc, ptcb_desc->mac_id);
	} else {
		FUNC49(pdesc, 0xC + ptcb_desc->ratr_index);
		FUNC41(pdesc, ptcb_desc->mac_id);
	}
	if (!FUNC6(fc))  {
		FUNC37(pdesc, 1);
		FUNC38(pdesc, 0);
	}
	FUNC43(pdesc, (lastseg ? 0 : 1));
	if (FUNC9(FUNC4(hdr)) ||
	    FUNC8(FUNC4(hdr))) {
		FUNC28(pdesc, 1);
	}

	FUNC15(hw, pdesc8, ptcb_desc->mac_id);
	FUNC0(rtlpriv, COMP_SEND, DBG_TRACE, "\n");
}