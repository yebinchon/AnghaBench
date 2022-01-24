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
typedef  scalar_t__ u8 ;
struct TYPE_5__ {int n_bitrates; TYPE_1__* bitrates; } ;
struct zd_mac {int /*<<< orphan*/  pass_ctrl; TYPE_2__ band; int /*<<< orphan*/  chip; scalar_t__ pass_failed_fcs; } ;
struct sk_buff {int dummy; } ;
struct rx_status {int frame_status; int /*<<< orphan*/  signal_strength; } ;
struct ieee80211_rx_status {int rate_idx; int /*<<< orphan*/  signal; int /*<<< orphan*/  band; int /*<<< orphan*/  freq; int /*<<< orphan*/  flag; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  stats ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_6__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_4__ {scalar_t__ hw_value; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FCS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  RX_FLAG_FAILED_FCS_CRC ; 
 int ZD_PLCP_HEADER_SIZE ; 
 int ZD_RX_CRC32_ERROR ; 
 int ZD_RX_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (struct ieee80211_hw*,struct ieee80211_hdr*,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ieee80211_rx_status*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__ const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 TYPE_3__* zd_channels ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 struct zd_mac* FUNC13 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC14 (scalar_t__ const*,struct rx_status const*) ; 

int FUNC15(struct ieee80211_hw *hw, const u8 *buffer, unsigned int length)
{
	struct zd_mac *mac = FUNC13(hw);
	struct ieee80211_rx_status stats;
	const struct rx_status *status;
	struct sk_buff *skb;
	int bad_frame = 0;
	__le16 fc;
	int need_padding;
	int i;
	u8 rate;

	if (length < ZD_PLCP_HEADER_SIZE + 10 /* IEEE80211_1ADDR_LEN */ +
	             FCS_LEN + sizeof(struct rx_status))
		return -EINVAL;

	FUNC9(&stats, 0, sizeof(stats));

	/* Note about pass_failed_fcs and pass_ctrl access below:
	 * mac locking intentionally omitted here, as this is the only unlocked
	 * reader and the only writer is configure_filter. Plus, if there were
	 * any races accessing these variables, it wouldn't really matter.
	 * If mac80211 ever provides a way for us to access filter flags
	 * from outside configure_filter, we could improve on this. Also, this
	 * situation may change once we implement some kind of DMA-into-skb
	 * RX path. */

	/* Caller has to ensure that length >= sizeof(struct rx_status). */
	status = (struct rx_status *)
		(buffer + (length - sizeof(struct rx_status)));
	if (status->frame_status & ZD_RX_ERROR) {
		if (mac->pass_failed_fcs &&
				(status->frame_status & ZD_RX_CRC32_ERROR)) {
			stats.flag |= RX_FLAG_FAILED_FCS_CRC;
			bad_frame = 1;
		} else {
			return -EINVAL;
		}
	}

	stats.freq = zd_channels[FUNC1(&mac->chip) - 1].center_freq;
	stats.band = NL80211_BAND_2GHZ;
	stats.signal = FUNC12(hw, status->signal_strength);

	rate = FUNC14(buffer, status);

	/* todo: return index in the big switches in zd_rx_rate instead */
	for (i = 0; i < mac->band.n_bitrates; i++)
		if (rate == mac->band.bitrates[i].hw_value)
			stats.rate_idx = i;

	length -= ZD_PLCP_HEADER_SIZE + sizeof(struct rx_status);
	buffer += ZD_PLCP_HEADER_SIZE;

	/* Except for bad frames, filter each frame to see if it is an ACK, in
	 * which case our internal TX tracking is updated. Normally we then
	 * bail here as there's no need to pass ACKs on up to the stack, but
	 * there is also the case where the stack has requested us to pass
	 * control frames on up (pass_ctrl) which we must consider. */
	if (!bad_frame &&
			FUNC3(hw, (struct ieee80211_hdr *)buffer, &stats)
			&& !mac->pass_ctrl)
		return 0;

	fc = FUNC4((__le16*)buffer);
	need_padding = FUNC6(fc) ^ FUNC5(fc);

	skb = FUNC2(length + (need_padding ? 2 : 0));
	if (skb == NULL)
		return -ENOMEM;
	if (need_padding) {
		/* Make sure the payload data is 4 byte aligned. */
		FUNC11(skb, 2);
	}

	/* FIXME : could we avoid this big memcpy ? */
	FUNC10(skb, buffer, length);

	FUNC8(FUNC0(skb), &stats, sizeof(stats));
	FUNC7(hw, skb);
	return 0;
}