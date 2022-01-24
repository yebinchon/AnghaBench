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
typedef  int /*<<< orphan*/  u8 ;
struct wsm_rx {scalar_t__ status; int channel_number; int rx_rate; int flags; scalar_t__ rcpi_rssi; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_tim_ie {scalar_t__ dtim_period; } ;
struct ieee80211_rx_status {int flag; int rate_idx; scalar_t__ mactime; scalar_t__ antenna; scalar_t__ signal; int /*<<< orphan*/  encoding; int /*<<< orphan*/  band; int /*<<< orphan*/  freq; } ;
struct ieee80211_pspoll {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * variable; } ;
struct TYPE_10__ {scalar_t__ category; } ;
struct TYPE_11__ {TYPE_1__ beacon; TYPE_4__ action; } ;
struct ieee80211_mgmt {TYPE_5__ u; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct cw1200_link_entry {scalar_t__ status; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  timestamp; } ;
struct cw1200_common {scalar_t__ mode; int action_linkid; scalar_t__ join_dtim_period; int disable_beacon_filter; TYPE_6__* hw; int /*<<< orphan*/  ps_state_lock; int /*<<< orphan*/  pm_state; int /*<<< orphan*/  update_filtering_work; int /*<<< orphan*/  workqueue; TYPE_3__* vif; int /*<<< orphan*/  set_beacon_wakeup_period_work; int /*<<< orphan*/  linkid_reset_work; scalar_t__* action_frame_sa; struct cw1200_link_entry* link_id_db; } ;
typedef  scalar_t__ s8 ;
struct TYPE_12__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_8__ {scalar_t__ ibss_joined; scalar_t__ assoc; int /*<<< orphan*/  bssid; } ;
struct TYPE_9__ {TYPE_2__ bss_conf; int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 scalar_t__ CW1200_LINK_SOFT ; 
 int CW1200_MAX_STA_IN_AP_MODE ; 
 int ETH_ALEN ; 
 int HZ ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  RX_ENC_HT ; 
 int RX_FLAG_DECRYPTED ; 
 int RX_FLAG_IV_STRIPPED ; 
 int RX_FLAG_MMIC_ERROR ; 
 int RX_FLAG_MMIC_STRIPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ WLAN_CATEGORY_PUBLIC ; 
 int /*<<< orphan*/  WLAN_EID_TIM ; 
 int WSM_RX_STATUS_ADDRESS1 ; 
#define  WSM_RX_STATUS_AES 131 
 int WSM_RX_STATUS_AGGREGATE ; 
 int FUNC2 (int) ; 
#define  WSM_RX_STATUS_TKIP 130 
 int WSM_RX_STATUS_TSF_INCLUDED ; 
#define  WSM_RX_STATUS_WAPI 129 
#define  WSM_RX_STATUS_WEP 128 
 scalar_t__ WSM_STATUS_MICFAILURE ; 
 scalar_t__ WSM_STATUS_NO_KEY_FOUND ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*) ; 
 scalar_t__ FUNC6 (struct cw1200_common*,struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct cw1200_common*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct ieee80211_hdr*) ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*,struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 

void FUNC34(struct cw1200_common *priv,
		  struct wsm_rx *arg,
		  int link_id,
		  struct sk_buff **skb_p)
{
	struct sk_buff *skb = *skb_p;
	struct ieee80211_rx_status *hdr = FUNC0(skb);
	struct ieee80211_hdr *frame = (struct ieee80211_hdr *)skb->data;
	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)skb->data;
	struct cw1200_link_entry *entry = NULL;
	unsigned long grace_period;

	bool early_data = false;
	bool p2p = priv->vif && priv->vif->p2p;
	size_t hdrlen;
	hdr->flag = 0;

	if (priv->mode == NL80211_IFTYPE_UNSPECIFIED) {
		/* STA is stopped. */
		goto drop;
	}

	if (link_id && link_id <= CW1200_MAX_STA_IN_AP_MODE) {
		entry =	&priv->link_id_db[link_id - 1];
		if (entry->status == CW1200_LINK_SOFT &&
		    FUNC16(frame->frame_control))
			early_data = true;
		entry->timestamp = jiffies;
	} else if (p2p &&
		   FUNC13(frame->frame_control) &&
		   (mgmt->u.action.category == WLAN_CATEGORY_PUBLIC)) {
		FUNC23("[RX] Going to MAP&RESET link ID\n");
		FUNC1(FUNC33(&priv->linkid_reset_work));
		FUNC21(&priv->action_frame_sa[0],
		       FUNC11(frame), ETH_ALEN);
		priv->action_linkid = 0;
		FUNC26(&priv->linkid_reset_work);
	}

	if (link_id && p2p &&
	    FUNC13(frame->frame_control) &&
	    (mgmt->u.action.category == WLAN_CATEGORY_PUBLIC)) {
		/* Link ID already exists for the ACTION frame.
		 * Reset and Remap
		 */
		FUNC1(FUNC33(&priv->linkid_reset_work));
		FUNC21(&priv->action_frame_sa[0],
		       FUNC11(frame), ETH_ALEN);
		priv->action_linkid = link_id;
		FUNC26(&priv->linkid_reset_work);
	}
	if (arg->status) {
		if (arg->status == WSM_STATUS_MICFAILURE) {
			FUNC23("[RX] MIC failure.\n");
			hdr->flag |= RX_FLAG_MMIC_ERROR;
		} else if (arg->status == WSM_STATUS_NO_KEY_FOUND) {
			FUNC23("[RX] No key found.\n");
			goto drop;
		} else {
			FUNC23("[RX] Receive failure: %d.\n",
				 arg->status);
			goto drop;
		}
	}

	if (skb->len < sizeof(struct ieee80211_pspoll)) {
		FUNC32(priv->hw->wiphy, "Malformed SDU rx'ed. Size is lesser than IEEE header.\n");
		goto drop;
	}

	if (FUNC18(frame->frame_control))
		if (FUNC7(priv, skb))
			goto drop;

	hdr->band = ((arg->channel_number & 0xff00) ||
		     (arg->channel_number > 14)) ?
			NL80211_BAND_5GHZ : NL80211_BAND_2GHZ;
	hdr->freq = FUNC10(
			arg->channel_number,
			hdr->band);

	if (arg->rx_rate >= 14) {
		hdr->encoding = RX_ENC_HT;
		hdr->rate_idx = arg->rx_rate - 14;
	} else if (arg->rx_rate >= 4) {
		hdr->rate_idx = arg->rx_rate - 2;
	} else {
		hdr->rate_idx = arg->rx_rate;
	}

	hdr->signal = (s8)arg->rcpi_rssi;
	hdr->antenna = 0;

	hdrlen = FUNC12(frame->frame_control);

	if (FUNC2(arg->flags)) {
		size_t iv_len = 0, icv_len = 0;

		hdr->flag |= RX_FLAG_DECRYPTED | RX_FLAG_IV_STRIPPED;

		/* Oops... There is no fast way to ask mac80211 about
		 * IV/ICV lengths. Even defineas are not exposed.
		 */
		switch (FUNC2(arg->flags)) {
		case WSM_RX_STATUS_WEP:
			iv_len = 4 /* WEP_IV_LEN */;
			icv_len = 4 /* WEP_ICV_LEN */;
			break;
		case WSM_RX_STATUS_TKIP:
			iv_len = 8 /* TKIP_IV_LEN */;
			icv_len = 4 /* TKIP_ICV_LEN */
				+ 8 /*MICHAEL_MIC_LEN*/;
			hdr->flag |= RX_FLAG_MMIC_STRIPPED;
			break;
		case WSM_RX_STATUS_AES:
			iv_len = 8 /* CCMP_HDR_LEN */;
			icv_len = 8 /* CCMP_MIC_LEN */;
			break;
		case WSM_RX_STATUS_WAPI:
			iv_len = 18 /* WAPI_HDR_LEN */;
			icv_len = 16 /* WAPI_MIC_LEN */;
			break;
		default:
			FUNC24("Unknown encryption type %d\n",
				FUNC2(arg->flags));
			goto drop;
		}

		/* Firmware strips ICV in case of MIC failure. */
		if (arg->status == WSM_STATUS_MICFAILURE)
			icv_len = 0;

		if (skb->len < hdrlen + iv_len + icv_len) {
			FUNC32(priv->hw->wiphy, "Malformed SDU rx'ed. Size is lesser than crypto headers.\n");
			goto drop;
		}

		/* Remove IV, ICV and MIC */
		FUNC29(skb, skb->len - icv_len);
		FUNC22(skb->data + iv_len, skb->data, hdrlen);
		FUNC27(skb, iv_len);
	}

	/* Remove TSF from the end of frame */
	if (arg->flags & WSM_RX_STATUS_TSF_INCLUDED) {
		FUNC21(&hdr->mactime, skb->data + skb->len - 8, 8);
		hdr->mactime = FUNC20(hdr->mactime);
		if (skb->len >= 8)
			FUNC29(skb, skb->len - 8);
	} else {
		hdr->mactime = 0;
	}

	FUNC4(priv);
	if (arg->flags & WSM_RX_STATUS_AGGREGATE)
		FUNC5(priv);

	if (FUNC13(frame->frame_control) &&
	    (arg->flags & WSM_RX_STATUS_ADDRESS1)) {
		if (FUNC6(priv, skb))
			return;
	} else if (FUNC15(frame->frame_control) &&
		   !arg->status && priv->vif &&
		   FUNC9(FUNC11(frame), priv->vif->bss_conf.bssid)) {
		const u8 *tim_ie;
		u8 *ies = ((struct ieee80211_mgmt *)
			  (skb->data))->u.beacon.variable;
		size_t ies_len = skb->len - (ies - (u8 *)(skb->data));

		tim_ie = FUNC3(WLAN_EID_TIM, ies, ies_len);
		if (tim_ie) {
			struct ieee80211_tim_ie *tim =
				(struct ieee80211_tim_ie *)&tim_ie[2];

			if (priv->join_dtim_period != tim->dtim_period) {
				priv->join_dtim_period = tim->dtim_period;
				FUNC25(priv->workqueue,
					   &priv->set_beacon_wakeup_period_work);
			}
		}

		/* Disable beacon filter once we're associated... */
		if (priv->disable_beacon_filter &&
		    (priv->vif->bss_conf.assoc ||
		     priv->vif->bss_conf.ibss_joined)) {
			priv->disable_beacon_filter = false;
			FUNC25(priv->workqueue,
				   &priv->update_filtering_work);
		}
	}

	/* Stay awake after frame is received to give
	 * userspace chance to react and acquire appropriate
	 * wakelock.
	 */
	if (FUNC14(frame->frame_control))
		grace_period = 5 * HZ;
	else if (FUNC17(frame->frame_control))
		grace_period = 5 * HZ;
	else
		grace_period = 1 * HZ;
	FUNC8(&priv->pm_state, grace_period);

	if (early_data) {
		FUNC30(&priv->ps_state_lock);
		/* Double-check status with lock held */
		if (entry->status == CW1200_LINK_SOFT)
			FUNC28(&entry->rx_queue, skb);
		else
			FUNC19(priv->hw, skb);
		FUNC31(&priv->ps_state_lock);
	} else {
		FUNC19(priv->hw, skb);
	}
	*skb_p = NULL;

	return;

drop:
	/* TODO: update failure counters */
	return;
}