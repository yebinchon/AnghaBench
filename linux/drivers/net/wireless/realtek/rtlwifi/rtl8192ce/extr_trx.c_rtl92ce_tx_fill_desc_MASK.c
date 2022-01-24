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
struct tx_desc_92c {int dummy; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct rtl_tcb_desc {scalar_t__ ratr_index; scalar_t__ mac_id; scalar_t__ use_driver_rate; scalar_t__ packet_bw; scalar_t__ rts_use_shortgi; scalar_t__ rts_use_shortpreamble; int /*<<< orphan*/  rts_rate; int /*<<< orphan*/  rts_sc; scalar_t__ rts_stbc; scalar_t__ cts_enable; scalar_t__ rts_enable; scalar_t__ use_shortpreamble; scalar_t__ use_shortgi; int /*<<< orphan*/  hw_rate; } ;
struct rtl_ps_ctl {scalar_t__ fwctrl_lps; } ;
struct TYPE_6__ {scalar_t__ useramask; } ;
struct rtl_priv {TYPE_3__ dm; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct rtl_mac {scalar_t__ opmode; int bw_40; int cur_40_prime_sc; scalar_t__ rdg_en; int /*<<< orphan*/  bssid; int /*<<< orphan*/  vif; } ;
struct TYPE_5__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct TYPE_4__ {int ampdu_density; } ;
struct ieee80211_sta {scalar_t__ bandwidth; TYPE_1__ ht_cap; } ;
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
 int /*<<< orphan*/  IEEE80211_FCTL_MOREFRAGS ; 
 int /*<<< orphan*/  IEEE80211_SCTL_FRAG ; 
 int IEEE80211_SCTL_SEQ ; 
 scalar_t__ IEEE80211_STA_RX_BW_40 ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
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
 struct ieee80211_sta* FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,struct rtl_tcb_desc*) ; 
 struct rtl_mac* FUNC17 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC20 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC21 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC58 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC59 (int /*<<< orphan*/ *,int) ; 

void FUNC60(struct ieee80211_hw *hw,
			  struct ieee80211_hdr *hdr, u8 *pdesc8,
			  u8 *pbd_desc_tx, struct ieee80211_tx_info *info,
			  struct ieee80211_sta *sta,
			  struct sk_buff *skb,
			  u8 hw_queue, struct rtl_tcb_desc *tcb_desc)
{
	struct rtl_priv *rtlpriv = FUNC20(hw);
	struct rtl_mac *mac = FUNC17(FUNC20(hw));
	struct rtl_pci *rtlpci = FUNC18(FUNC19(hw));
	struct rtl_ps_ctl *ppsc = FUNC21(FUNC20(hw));
	bool defaultadapter = true;
	__le32 *pdesc = (__le32 *)pdesc8;
	u16 seq_number;
	__le16 fc = hdr->frame_control;
	u8 fw_qsel = FUNC1(skb, hw_queue);
	bool firstseg = ((hdr->seq_ctrl &
			  FUNC3(IEEE80211_SCTL_FRAG)) == 0);

	bool lastseg = ((hdr->frame_control &
			 FUNC3(IEEE80211_FCTL_MOREFRAGS)) == 0);

	dma_addr_t mapping = FUNC13(rtlpci->pdev,
					    skb->data, skb->len,
					    PCI_DMA_TODEVICE);

	u8 bw_40 = 0;

	if (FUNC12(rtlpci->pdev, mapping)) {
		FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
			 "DMA mapping error\n");
		return;
	}
	FUNC14();
	sta = FUNC4(hw, mac->vif, mac->bssid);
	if (mac->opmode == NL80211_IFTYPE_STATION) {
		bw_40 = mac->bw_40;
	} else if (mac->opmode == NL80211_IFTYPE_AP ||
		   mac->opmode == NL80211_IFTYPE_ADHOC ||
		   mac->opmode == NL80211_IFTYPE_MESH_POINT) {
		if (sta)
			bw_40 = sta->bandwidth >= IEEE80211_STA_RX_BW_40;
	}

	seq_number = (FUNC11(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4;

	FUNC16(hw, info, sta, skb, tcb_desc);

	FUNC2(pdesc, sizeof(struct tx_desc_92c));

	if (FUNC8(fc) || FUNC6(fc)) {
		firstseg = true;
		lastseg = true;
	}
	if (firstseg) {
		FUNC39(pdesc, USB_HWDESC_HEADER_LEN);

		FUNC57(pdesc, tcb_desc->hw_rate);

		if (tcb_desc->use_shortgi || tcb_desc->use_shortpreamble)
			FUNC28(pdesc, 1);

		if (info->flags & IEEE80211_TX_CTL_AMPDU) {
			FUNC22(pdesc, 1);
			FUNC37(pdesc, 0x14);
		}
		FUNC54(pdesc, seq_number);

		FUNC47(pdesc, ((tcb_desc->rts_enable &&
						!tcb_desc->
						cts_enable) ? 1 : 0));
		FUNC32(pdesc,
					  ((tcb_desc->rts_enable
					    || tcb_desc->cts_enable) ? 1 : 0));
		FUNC25(pdesc, ((tcb_desc->cts_enable) ? 1 : 0));
		FUNC52(pdesc, ((tcb_desc->rts_stbc) ? 1 : 0));

		FUNC48(pdesc, tcb_desc->rts_rate);
		FUNC46(pdesc, 0);
		FUNC50(pdesc, tcb_desc->rts_sc);
		FUNC51(pdesc,
				      ((tcb_desc->rts_rate <= DESC_RATE54M) ?
				       (tcb_desc->rts_use_shortpreamble ? 1 : 0)
				       : (tcb_desc->rts_use_shortgi ? 1 : 0)));

		if (bw_40) {
			if (tcb_desc->packet_bw) {
				FUNC26(pdesc, 1);
				FUNC58(pdesc, 3);
			} else {
				FUNC26(pdesc, 0);
				FUNC58(pdesc,
						 mac->cur_40_prime_sc);
			}
		} else {
			FUNC26(pdesc, 0);
			FUNC58(pdesc, 0);
		}

		FUNC35(pdesc, 0);
		FUNC41(pdesc, (u16)skb->len);

		if (sta) {
			u8 ampdu_density = sta->ht_cap.ampdu_density;

			FUNC23(pdesc, ampdu_density);
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

		FUNC40(pdesc, 0);
		FUNC43(pdesc, fw_qsel);

		FUNC27(pdesc, 0x1F);
		FUNC49(pdesc, 0xF);
		FUNC29(pdesc, 0);
		FUNC59(pdesc, tcb_desc->use_driver_rate ? 1 : 0);

		if (FUNC7(fc)) {
			if (mac->rdg_en) {
				FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
					 "Enable RDG function\n");
				FUNC45(pdesc, 1);
				FUNC31(pdesc, 1);
			}
		}
	}
	FUNC15();

	FUNC30(pdesc, (firstseg ? 1 : 0));
	FUNC34(pdesc, (lastseg ? 1 : 0));

	FUNC56(pdesc, (u16)skb->len);

	FUNC55(pdesc, mapping);

	if (rtlpriv->dm.useramask) {
		FUNC44(pdesc, tcb_desc->ratr_index);
		FUNC36(pdesc, tcb_desc->mac_id);
	} else {
		FUNC44(pdesc, 0xC + tcb_desc->ratr_index);
		FUNC36(pdesc, tcb_desc->ratr_index);
	}

	if ((!FUNC7(fc)) && ppsc->fwctrl_lps) {
		FUNC33(pdesc, 1);
		FUNC40(pdesc, 8);

		if (!defaultadapter)
			FUNC42(pdesc, 1);
	}

	FUNC38(pdesc, (lastseg ? 0 : 1));

	if (FUNC10(FUNC5(hdr)) ||
	    FUNC9(FUNC5(hdr))) {
		FUNC24(pdesc, 1);
	}

	FUNC0(rtlpriv, COMP_SEND, DBG_TRACE, "\n");
}