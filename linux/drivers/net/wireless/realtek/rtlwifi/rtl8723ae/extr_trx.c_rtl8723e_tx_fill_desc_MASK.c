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
struct tx_desc_8723e {int dummy; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct rtl_tcb_desc {scalar_t__ packet_bw; scalar_t__ ratr_index; scalar_t__ mac_id; scalar_t__ use_driver_rate; scalar_t__ rts_use_shortgi; scalar_t__ rts_use_shortpreamble; int /*<<< orphan*/  rts_rate; int /*<<< orphan*/  rts_sc; scalar_t__ rts_stbc; scalar_t__ cts_enable; scalar_t__ rts_enable; scalar_t__ use_shortpreamble; scalar_t__ use_shortgi; int /*<<< orphan*/  hw_rate; } ;
struct rtl_ps_ctl {scalar_t__ fwctrl_lps; } ;
struct TYPE_6__ {scalar_t__ useramask; } ;
struct rtl_priv {TYPE_3__ dm; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct rtl_mac {scalar_t__ opmode; int bw_40; int cur_40_prime_sc; scalar_t__ rdg_en; } ;
struct TYPE_5__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct TYPE_4__ {int cap; int ampdu_density; } ;
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
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  USB_HWDESC_HEADER_LEN ; 
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
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,struct rtl_tcb_desc*) ; 
 struct rtl_mac* FUNC14 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC17 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC18 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ *,int) ; 

void FUNC57(struct ieee80211_hw *hw,
			   struct ieee80211_hdr *hdr, u8 *pdesc_tx,
			   u8 *txbd, struct ieee80211_tx_info *info,
			   struct ieee80211_sta *sta,
			   struct sk_buff *skb,
			   u8 hw_queue, struct rtl_tcb_desc *ptcb_desc)
{
	struct rtl_priv *rtlpriv = FUNC17(hw);
	struct rtl_mac *mac = FUNC14(FUNC17(hw));
	struct rtl_pci *rtlpci = FUNC15(FUNC16(hw));
	struct rtl_ps_ctl *ppsc = FUNC18(FUNC17(hw));
	bool b_defaultadapter = true;
	/* bool b_trigger_ac = false; */
	u8 *pdesc8 = (u8 *)pdesc_tx;
	__le32 *pdesc = (__le32 *)pdesc8;
	u16 seq_number;
	__le16 fc = hdr->frame_control;
	u8 fw_qsel = FUNC1(skb, hw_queue);
	bool firstseg = ((hdr->seq_ctrl &
			  FUNC3(IEEE80211_SCTL_FRAG)) == 0);

	bool lastseg = ((hdr->frame_control &
			 FUNC3(IEEE80211_FCTL_MOREFRAGS)) == 0);

	dma_addr_t mapping = FUNC12(rtlpci->pdev,
					    skb->data, skb->len,
					    PCI_DMA_TODEVICE);
	u8 bw_40 = 0;

	if (FUNC11(rtlpci->pdev, mapping)) {
		FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
			 "DMA mapping error\n");
		return;
	}
	if (mac->opmode == NL80211_IFTYPE_STATION) {
		bw_40 = mac->bw_40;
	} else if (mac->opmode == NL80211_IFTYPE_AP ||
		mac->opmode == NL80211_IFTYPE_ADHOC) {
		if (sta)
			bw_40 = sta->ht_cap.cap &
				IEEE80211_HT_CAP_SUP_WIDTH_20_40;
	}

	seq_number = (FUNC10(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4;

	FUNC13(hw, info, sta, skb, ptcb_desc);

	FUNC2(pdesc, sizeof(struct tx_desc_8723e));

	if (FUNC7(fc) || FUNC5(fc)) {
		firstseg = true;
		lastseg = true;
	}

	if (firstseg) {
		FUNC37(pdesc, USB_HWDESC_HEADER_LEN);

		FUNC54(pdesc, ptcb_desc->hw_rate);

		if (ptcb_desc->use_shortgi || ptcb_desc->use_shortpreamble)
			FUNC25(pdesc, 1);

		if (info->flags & IEEE80211_TX_CTL_AMPDU) {
			FUNC19(pdesc, 1);
			FUNC35(pdesc, 0x14);
		}
		FUNC51(pdesc, seq_number);

		FUNC44(pdesc,
				       ((ptcb_desc->rts_enable &&
					!ptcb_desc->cts_enable) ? 1 : 0));
		FUNC29(pdesc,
					  ((ptcb_desc->rts_enable ||
					  ptcb_desc->cts_enable) ? 1 : 0));
		FUNC22(pdesc,
				     ((ptcb_desc->cts_enable) ? 1 : 0));
		FUNC49(pdesc,
				     ((ptcb_desc->rts_stbc) ? 1 : 0));

		FUNC45(pdesc, ptcb_desc->rts_rate);
		FUNC43(pdesc, 0);
		FUNC47(pdesc, ptcb_desc->rts_sc);
		FUNC48(pdesc,
				((ptcb_desc->rts_rate <= DESC92C_RATE54M) ?
				(ptcb_desc->rts_use_shortpreamble ? 1 : 0)
				: (ptcb_desc->rts_use_shortgi ? 1 : 0)));

		if (bw_40) {
			if (ptcb_desc->packet_bw == HT_CHANNEL_WIDTH_20_40) {
				FUNC23(pdesc, 1);
				FUNC55(pdesc, 3);
			} else {
				FUNC23(pdesc, 0);
				FUNC55(pdesc,
					mac->cur_40_prime_sc);
			}
		} else {
			FUNC23(pdesc, 0);
			FUNC55(pdesc, 0);
		}

		FUNC33(pdesc, 0);
		FUNC39(pdesc, (u16)skb->len);

		if (sta) {
			u8 ampdu_density = sta->ht_cap.ampdu_density;
			FUNC20(pdesc, ampdu_density);
		}

		if (info->control.hw_key) {
			struct ieee80211_key_conf *keyconf =
			    info->control.hw_key;

			switch (keyconf->cipher) {
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

		FUNC38(pdesc, 0);
		FUNC40(pdesc, fw_qsel);

		FUNC24(pdesc, 0x1F);
		FUNC46(pdesc, 0xF);
		FUNC26(pdesc, 0);
		FUNC56(pdesc, ptcb_desc->use_driver_rate ? 1 : 0);

		if (FUNC6(fc)) {
			if (mac->rdg_en) {
				FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
					 "Enable RDG function.\n");
				FUNC42(pdesc, 1);
				FUNC28(pdesc, 1);
			}
		}
	}

	FUNC27(pdesc, (firstseg ? 1 : 0));
	FUNC32(pdesc, (lastseg ? 1 : 0));

	FUNC53(pdesc, (u16)skb->len);

	FUNC52(pdesc, mapping);

	if (rtlpriv->dm.useramask) {
		FUNC41(pdesc, ptcb_desc->ratr_index);
		FUNC34(pdesc, ptcb_desc->mac_id);
	} else {
		FUNC41(pdesc, 0xC + ptcb_desc->ratr_index);
		FUNC34(pdesc, ptcb_desc->ratr_index);
	}

	if ((!FUNC6(fc)) && ppsc->fwctrl_lps) {
		FUNC30(pdesc, 1);
		/* set_tx_desc_hwseq_en(pdesc, 1); */
		/* set_tx_desc_pkt_id(pdesc, 8); */

		if (!b_defaultadapter)
			FUNC31(pdesc, 1);
	/* set_tx_desc_qos(pdesc, 1); */
	}

	FUNC36(pdesc, (lastseg ? 0 : 1));

	if (FUNC9(FUNC4(hdr)) ||
	    FUNC8(FUNC4(hdr))) {
		FUNC21(pdesc, 1);
	}

	FUNC0(rtlpriv, COMP_SEND, DBG_TRACE, "\n");
}