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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct rtl_tcb_desc {int mac_id; scalar_t__ use_driver_rate; int /*<<< orphan*/  ratr_index; scalar_t__ packet_bw; scalar_t__ rts_use_shortgi; scalar_t__ rts_use_shortpreamble; int /*<<< orphan*/  rts_rate; int /*<<< orphan*/  rts_sc; scalar_t__ rts_stbc; scalar_t__ cts_enable; scalar_t__ rts_enable; scalar_t__ use_shortpreamble; scalar_t__ use_shortgi; int /*<<< orphan*/  hw_rate; } ;
struct TYPE_3__ {scalar_t__ useramask; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct rtl_mac {scalar_t__ opmode; int bw_40; int /*<<< orphan*/  cur_40_prime_sc; } ;
struct rtl_hal {scalar_t__ version; } ;
struct TYPE_4__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct ieee80211_sta {scalar_t__ bandwidth; } ;
struct ieee80211_key_conf {int cipher; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; int seq_ctrl; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  DESC_RATE11M ; 
 int /*<<< orphan*/  DESC_RATE12M ; 
 int /*<<< orphan*/  DESC_RATE1M ; 
 int /*<<< orphan*/  DESC_RATE2M ; 
 int /*<<< orphan*/  DESC_RATE54M ; 
 int /*<<< orphan*/  DESC_RATE5_5M ; 
 int /*<<< orphan*/  DESC_RATEMCS0 ; 
 int /*<<< orphan*/  IEEE80211_FCTL_MOREFRAGS ; 
 int /*<<< orphan*/  IEEE80211_SCTL_FRAG ; 
 int IEEE80211_SCTL_SEQ ; 
 scalar_t__ IEEE80211_STA_RX_BW_40 ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int*,int) ; 
 int /*<<< orphan*/  FUNC16 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int*,int) ; 
 int /*<<< orphan*/  FUNC18 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int*,int) ; 
 int /*<<< orphan*/  FUNC20 (int*,int) ; 
 int /*<<< orphan*/  FUNC21 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int*,int) ; 
 int /*<<< orphan*/  FUNC23 (int*,int) ; 
 int /*<<< orphan*/  FUNC24 (int*,int) ; 
 int /*<<< orphan*/  FUNC25 (int*,int) ; 
 int /*<<< orphan*/  FUNC26 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int*,int) ; 
 int /*<<< orphan*/  FUNC28 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int*,int) ; 
 int /*<<< orphan*/  TX_DESC_SIZE_RTL8192S ; 
 scalar_t__ VERSION_8192S_ACUT ; 
#define  WLAN_CIPHER_SUITE_CCMP 131 
#define  WLAN_CIPHER_SUITE_TKIP 130 
#define  WLAN_CIPHER_SUITE_WEP104 129 
#define  WLAN_CIPHER_SUITE_WEP40 128 
 int FUNC32 (struct sk_buff*,int) ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int) ; 
 int /*<<< orphan*/  FUNC35 (int) ; 
 scalar_t__ FUNC36 (int) ; 
 int FUNC37 (int) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct ieee80211_hw*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,struct rtl_tcb_desc*) ; 
 struct rtl_hal* FUNC41 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC42 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC43 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC45 (struct ieee80211_hw*) ; 

void FUNC46(struct ieee80211_hw *hw,
		struct ieee80211_hdr *hdr, u8 *pdesc_tx,
		u8 *pbd_desc_tx, struct ieee80211_tx_info *info,
		struct ieee80211_sta *sta,
		struct sk_buff *skb,
		u8 hw_queue, struct rtl_tcb_desc *ptcb_desc)
{
	struct rtl_priv *rtlpriv = FUNC45(hw);
	struct rtl_mac *mac = FUNC42(FUNC45(hw));
	struct rtl_pci *rtlpci = FUNC43(FUNC44(hw));
	struct rtl_hal *rtlhal = FUNC41(FUNC45(hw));
	u8 *pdesc = pdesc_tx;
	u16 seq_number;
	__le16 fc = hdr->frame_control;
	u8 reserved_macid = 0;
	u8 fw_qsel = FUNC32(skb, hw_queue);
	bool firstseg = (!(hdr->seq_ctrl & FUNC33(IEEE80211_SCTL_FRAG)));
	bool lastseg = (!(hdr->frame_control &
			FUNC33(IEEE80211_FCTL_MOREFRAGS)));
	dma_addr_t mapping = FUNC39(rtlpci->pdev, skb->data, skb->len,
		    PCI_DMA_TODEVICE);
	u8 bw_40 = 0;

	if (FUNC38(rtlpci->pdev, mapping)) {
		FUNC1(rtlpriv, COMP_SEND, DBG_TRACE,
			 "DMA mapping error\n");
		return;
	}
	if (mac->opmode == NL80211_IFTYPE_STATION) {
		bw_40 = mac->bw_40;
	} else if (mac->opmode == NL80211_IFTYPE_AP ||
		mac->opmode == NL80211_IFTYPE_ADHOC) {
		if (sta)
			bw_40 = sta->bandwidth >= IEEE80211_STA_RX_BW_40;
	}

	seq_number = (FUNC37(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4;

	FUNC40(hw, info, sta, skb, ptcb_desc);

	FUNC0(pdesc, TX_DESC_SIZE_RTL8192S);

	if (FUNC36(fc) || FUNC34(fc)) {
		firstseg = true;
		lastseg = true;
	}

	if (firstseg) {
		if (rtlpriv->dm.useramask) {
			/* set txdesc macId */
			if (ptcb_desc->mac_id < 32) {
				FUNC8(pdesc, ptcb_desc->mac_id);
				reserved_macid |= ptcb_desc->mac_id;
			}
		}
		FUNC15(pdesc, reserved_macid);

		FUNC24(pdesc, ((ptcb_desc->hw_rate >=
				 DESC_RATEMCS0) ? 1 : 0));

		if (rtlhal->version == VERSION_8192S_ACUT) {
			if (ptcb_desc->hw_rate == DESC_RATE1M ||
			    ptcb_desc->hw_rate  == DESC_RATE2M ||
			    ptcb_desc->hw_rate == DESC_RATE5_5M ||
			    ptcb_desc->hw_rate == DESC_RATE11M) {
				ptcb_desc->hw_rate = DESC_RATE12M;
			}
		}

		FUNC28(pdesc, ptcb_desc->hw_rate);

		if (ptcb_desc->use_shortgi || ptcb_desc->use_shortpreamble)
			FUNC29(pdesc, 0);

		/* Aggregation related */
		if (info->flags & IEEE80211_TX_CTL_AMPDU)
			FUNC2(pdesc, 1);

		/* For AMPDU, we must insert SSN into TX_DESC */
		FUNC23(pdesc, seq_number);

		/* Protection mode related */
		/* For 92S, if RTS/CTS are set, HW will execute RTS. */
		/* We choose only one protection mode to execute */
		FUNC17(pdesc, ((ptcb_desc->rts_enable &&
				!ptcb_desc->cts_enable) ? 1 : 0));
		FUNC3(pdesc, ((ptcb_desc->cts_enable) ?
				       1 : 0));
		FUNC20(pdesc, ((ptcb_desc->rts_stbc) ? 1 : 0));

		FUNC18(pdesc, ptcb_desc->rts_rate);
		FUNC16(pdesc, 0);
		FUNC21(pdesc, ptcb_desc->rts_sc);
		FUNC19(pdesc, ((ptcb_desc->rts_rate <=
		       DESC_RATE54M) ?
		       (ptcb_desc->rts_use_shortpreamble ? 1 : 0)
		       : (ptcb_desc->rts_use_shortgi ? 1 : 0)));


		/* Set Bandwidth and sub-channel settings. */
		if (bw_40) {
			if (ptcb_desc->packet_bw) {
				FUNC25(pdesc, 1);
				/* use duplicated mode */
				FUNC30(pdesc, 0);
			} else {
				FUNC25(pdesc, 0);
				FUNC30(pdesc,
						   mac->cur_40_prime_sc);
			}
		} else {
			FUNC25(pdesc, 0);
			FUNC30(pdesc, 0);
		}

		/* 3 Fill necessary field in First Descriptor */
		/*DWORD 0*/
		FUNC7(pdesc, 0);
		FUNC10(pdesc, 32);
		FUNC12(pdesc, (u16) skb->len);

		/*DWORD 1*/
		FUNC14(pdesc, ptcb_desc->ratr_index);

		/* Fill security related */
		if (info->control.hw_key) {
			struct ieee80211_key_conf *keyconf;

			keyconf = info->control.hw_key;
			switch (keyconf->cipher) {
			case WLAN_CIPHER_SUITE_WEP40:
			case WLAN_CIPHER_SUITE_WEP104:
				FUNC22(pdesc, 0x1);
				break;
			case WLAN_CIPHER_SUITE_TKIP:
				FUNC22(pdesc, 0x2);
				break;
			case WLAN_CIPHER_SUITE_CCMP:
				FUNC22(pdesc, 0x3);
				break;
			default:
				FUNC22(pdesc, 0x0);
				break;

			}
		}

		/* Set Packet ID */
		FUNC11(pdesc, 0);

		/* We will assign magement queue to BK. */
		FUNC13(pdesc, fw_qsel);

		/* Alwasy enable all rate fallback range */
		FUNC4(pdesc, 0x1F);

		/* Fix: I don't kown why hw use 6.5M to tx when set it */
		FUNC31(pdesc,
				      ptcb_desc->use_driver_rate ? 1 : 0);

		/* Set NON_QOS bit. */
		if (!FUNC35(fc))
			FUNC9(pdesc, 1);

	}

	/* Fill fields that are required to be initialized
	 * in all of the descriptors */
	/*DWORD 0 */
	FUNC5(pdesc, (firstseg ? 1 : 0));
	FUNC6(pdesc, (lastseg ? 1 : 0));

	/* DWORD 7 */
	FUNC27(pdesc, (u16) skb->len);

	/* DOWRD 8 */
	FUNC26(pdesc, mapping);

	FUNC1(rtlpriv, COMP_SEND, DBG_TRACE, "\n");
}