#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct qlink_tlv_hdr {scalar_t__ val; int /*<<< orphan*/  len; int /*<<< orphan*/  type; } ;
struct qlink_resp_band_info_get {int num_chans; scalar_t__ info; } ;
struct qlink_channel {int /*<<< orphan*/  dfs_state; int /*<<< orphan*/  dfs_cac_ms; int /*<<< orphan*/  beacon_found; scalar_t__ max_reg_power; scalar_t__ max_power; scalar_t__ max_antenna_gain; int /*<<< orphan*/  center_freq; int /*<<< orphan*/  hw_value; int /*<<< orphan*/  flags; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_channel {int max_antenna_gain; int max_power; int max_reg_power; int /*<<< orphan*/  flags; void* hw_value; int /*<<< orphan*/  dfs_state; int /*<<< orphan*/  dfs_state_entered; void* dfs_cac_ms; int /*<<< orphan*/  beacon_found; void* center_freq; int /*<<< orphan*/  band; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; struct ieee80211_channel vht_cap; struct ieee80211_channel ht_cap; int /*<<< orphan*/  band; } ;
struct ieee80211_ht_cap {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE80211_CHAN_DISABLED ; 
 int /*<<< orphan*/  IEEE80211_CHAN_INDOOR_ONLY ; 
 int /*<<< orphan*/  IEEE80211_CHAN_IR_CONCURRENT ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_10MHZ ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_160MHZ ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_20MHZ ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_80MHZ ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_HT40MINUS ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_HT40PLUS ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_IR ; 
 int /*<<< orphan*/  IEEE80211_CHAN_NO_OFDM ; 
 int /*<<< orphan*/  IEEE80211_CHAN_RADAR ; 
 int /*<<< orphan*/  NL80211_DFS_AVAILABLE ; 
 int /*<<< orphan*/  NL80211_DFS_UNAVAILABLE ; 
 int /*<<< orphan*/  NL80211_DFS_USABLE ; 
 int QLINK_CHAN_DISABLED ; 
 int QLINK_CHAN_INDOOR_ONLY ; 
 int QLINK_CHAN_IR_CONCURRENT ; 
 int QLINK_CHAN_NO_10MHZ ; 
 int QLINK_CHAN_NO_160MHZ ; 
 int QLINK_CHAN_NO_20MHZ ; 
 int QLINK_CHAN_NO_80MHZ ; 
 int QLINK_CHAN_NO_HT40MINUS ; 
 int QLINK_CHAN_NO_HT40PLUS ; 
 int QLINK_CHAN_NO_IR ; 
 int QLINK_CHAN_NO_OFDM ; 
 int QLINK_CHAN_RADAR ; 
 int /*<<< orphan*/  QLINK_DFS_AVAILABLE ; 
 int /*<<< orphan*/  QLINK_DFS_USABLE ; 
#define  QTN_TLV_ID_CHANNEL 130 
#define  WLAN_EID_HT_CAPABILITY 129 
#define  WLAN_EID_VHT_CAPABILITY 128 
 int /*<<< orphan*/  jiffies ; 
 struct ieee80211_channel* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct ieee80211_supported_band *band,
			     struct qlink_resp_band_info_get *resp,
			     size_t payload_len)
{
	u16 tlv_type;
	size_t tlv_len;
	size_t tlv_dlen;
	const struct qlink_tlv_hdr *tlv;
	const struct qlink_channel *qchan;
	struct ieee80211_channel *chan;
	unsigned int chidx = 0;
	u32 qflags;

	FUNC4(&band->ht_cap, 0, sizeof(band->ht_cap));
	FUNC4(&band->vht_cap, 0, sizeof(band->vht_cap));

	if (band->channels) {
		if (band->n_channels == resp->num_chans) {
			FUNC4(band->channels, 0,
			       sizeof(*band->channels) * band->n_channels);
		} else {
			FUNC1(band->channels);
			band->n_channels = 0;
			band->channels = NULL;
		}
	}

	band->n_channels = resp->num_chans;
	if (band->n_channels == 0)
		return 0;

	if (!band->channels)
		band->channels = FUNC0(band->n_channels, sizeof(*chan),
					 GFP_KERNEL);
	if (!band->channels) {
		band->n_channels = 0;
		return -ENOMEM;
	}

	tlv = (struct qlink_tlv_hdr *)resp->info;

	while (payload_len >= sizeof(*tlv)) {
		tlv_type = FUNC2(tlv->type);
		tlv_dlen = FUNC2(tlv->len);
		tlv_len = tlv_dlen + sizeof(*tlv);

		if (tlv_len > payload_len) {
			FUNC7("malformed TLV 0x%.2X; LEN: %zu\n",
				tlv_type, tlv_len);
			goto error_ret;
		}

		switch (tlv_type) {
		case QTN_TLV_ID_CHANNEL:
			if (FUNC10(tlv_dlen != sizeof(*qchan))) {
				FUNC6("invalid channel TLV len %zu\n",
				       tlv_len);
				goto error_ret;
			}

			if (chidx == band->n_channels) {
				FUNC6("too many channel TLVs\n");
				goto error_ret;
			}

			qchan = (const struct qlink_channel *)tlv->val;
			chan = &band->channels[chidx++];
			qflags = FUNC3(qchan->flags);

			chan->hw_value = FUNC2(qchan->hw_value);
			chan->band = band->band;
			chan->center_freq = FUNC2(qchan->center_freq);
			chan->max_antenna_gain = (int)qchan->max_antenna_gain;
			chan->max_power = (int)qchan->max_power;
			chan->max_reg_power = (int)qchan->max_reg_power;
			chan->beacon_found = qchan->beacon_found;
			chan->dfs_cac_ms = FUNC3(qchan->dfs_cac_ms);
			chan->flags = 0;

			if (qflags & QLINK_CHAN_DISABLED)
				chan->flags |= IEEE80211_CHAN_DISABLED;

			if (qflags & QLINK_CHAN_NO_IR)
				chan->flags |= IEEE80211_CHAN_NO_IR;

			if (qflags & QLINK_CHAN_NO_HT40PLUS)
				chan->flags |= IEEE80211_CHAN_NO_HT40PLUS;

			if (qflags & QLINK_CHAN_NO_HT40MINUS)
				chan->flags |= IEEE80211_CHAN_NO_HT40MINUS;

			if (qflags & QLINK_CHAN_NO_OFDM)
				chan->flags |= IEEE80211_CHAN_NO_OFDM;

			if (qflags & QLINK_CHAN_NO_80MHZ)
				chan->flags |= IEEE80211_CHAN_NO_80MHZ;

			if (qflags & QLINK_CHAN_NO_160MHZ)
				chan->flags |= IEEE80211_CHAN_NO_160MHZ;

			if (qflags & QLINK_CHAN_INDOOR_ONLY)
				chan->flags |= IEEE80211_CHAN_INDOOR_ONLY;

			if (qflags & QLINK_CHAN_IR_CONCURRENT)
				chan->flags |= IEEE80211_CHAN_IR_CONCURRENT;

			if (qflags & QLINK_CHAN_NO_20MHZ)
				chan->flags |= IEEE80211_CHAN_NO_20MHZ;

			if (qflags & QLINK_CHAN_NO_10MHZ)
				chan->flags |= IEEE80211_CHAN_NO_10MHZ;

			if (qflags & QLINK_CHAN_RADAR) {
				chan->flags |= IEEE80211_CHAN_RADAR;
				chan->dfs_state_entered = jiffies;

				if (qchan->dfs_state == QLINK_DFS_USABLE)
					chan->dfs_state = NL80211_DFS_USABLE;
				else if (qchan->dfs_state ==
					QLINK_DFS_AVAILABLE)
					chan->dfs_state = NL80211_DFS_AVAILABLE;
				else
					chan->dfs_state =
						NL80211_DFS_UNAVAILABLE;
			}

			FUNC5("chan=%d flags=%#x max_pow=%d max_reg_pow=%d\n",
				 chan->hw_value, chan->flags, chan->max_power,
				 chan->max_reg_power);
			break;
		case WLAN_EID_HT_CAPABILITY:
			if (FUNC10(tlv_dlen !=
				     sizeof(struct ieee80211_ht_cap))) {
				FUNC6("bad HTCAP TLV len %zu\n", tlv_dlen);
				goto error_ret;
			}

			FUNC8(tlv->val, &band->ht_cap);
			break;
		case WLAN_EID_VHT_CAPABILITY:
			if (FUNC10(tlv_dlen !=
				     sizeof(struct ieee80211_vht_cap))) {
				FUNC6("bad VHTCAP TLV len %zu\n", tlv_dlen);
				goto error_ret;
			}

			FUNC9(tlv->val,
						       &band->vht_cap);
			break;
		default:
			FUNC7("unknown TLV type: %#x\n", tlv_type);
			break;
		}

		payload_len -= tlv_len;
		tlv = (struct qlink_tlv_hdr *)(tlv->val + tlv_dlen);
	}

	if (payload_len) {
		FUNC6("malformed TLV buf; bytes left: %zu\n", payload_len);
		goto error_ret;
	}

	if (band->n_channels != chidx) {
		FUNC6("channel count mismatch: reported=%d, parsed=%d\n",
		       band->n_channels, chidx);
		goto error_ret;
	}

	return 0;

error_ret:
	FUNC1(band->channels);
	band->channels = NULL;
	band->n_channels = 0;

	return -EINVAL;
}