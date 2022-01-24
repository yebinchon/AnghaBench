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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wl1271_rx_descriptor {int flags; scalar_t__ rate; int rssi; int snr; int status; scalar_t__ channel; } ;
struct wl1271 {scalar_t__ hw_min_ht_rate; int noise; } ;
struct ieee80211_rx_status {int signal; int antenna; int flag; int /*<<< orphan*/  band; int /*<<< orphan*/  boottime_ns; int /*<<< orphan*/  freq; int /*<<< orphan*/  encoding; int /*<<< orphan*/  rate_idx; } ;

/* Variables and functions */
 int ANT_DIVERSITY_BITMASK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 int RSSI_LEVEL_BITMASK ; 
 int /*<<< orphan*/  RX_ENC_HT ; 
 int RX_FLAG_DECRYPTED ; 
 int RX_FLAG_IV_STRIPPED ; 
 int RX_FLAG_MMIC_ERROR ; 
 int RX_FLAG_MMIC_STRIPPED ; 
 int WL1271_RX_DESC_BAND_BG ; 
 int WL1271_RX_DESC_BAND_MASK ; 
 int WL1271_RX_DESC_ENCRYPT_MASK ; 
 int WL1271_RX_DESC_MIC_FAIL ; 
 int WL1271_RX_DESC_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct wl1271 *wl,
			     struct wl1271_rx_descriptor *desc,
			     struct ieee80211_rx_status *status,
			     u8 beacon, u8 probe_rsp)
{
	FUNC3(status, 0, sizeof(struct ieee80211_rx_status));

	if ((desc->flags & WL1271_RX_DESC_BAND_MASK) == WL1271_RX_DESC_BAND_BG)
		status->band = NL80211_BAND_2GHZ;
	else
		status->band = NL80211_BAND_5GHZ;

	status->rate_idx = FUNC6(wl, desc->rate, status->band);

	/* 11n support */
	if (desc->rate <= wl->hw_min_ht_rate)
		status->encoding = RX_ENC_HT;

	/*
	* Read the signal level and antenna diversity indication.
	* The msb in the signal level is always set as it is a
	* negative number.
	* The antenna indication is the msb of the rssi.
	*/
	status->signal = ((desc->rssi & RSSI_LEVEL_BITMASK) | FUNC0(7));
	status->antenna = ((desc->rssi & ANT_DIVERSITY_BITMASK) >> 7);

	/*
	 * FIXME: In wl1251, the SNR should be divided by two.  In wl1271 we
	 * need to divide by two for now, but TI has been discussing about
	 * changing it.  This needs to be rechecked.
	 */
	wl->noise = desc->rssi - (desc->snr >> 1);

	status->freq = FUNC1(desc->channel,
						      status->band);

	if (desc->flags & WL1271_RX_DESC_ENCRYPT_MASK) {
		u8 desc_err_code = desc->status & WL1271_RX_DESC_STATUS_MASK;

		status->flag |= RX_FLAG_IV_STRIPPED | RX_FLAG_MMIC_STRIPPED |
				RX_FLAG_DECRYPTED;

		if (FUNC4(desc_err_code & WL1271_RX_DESC_MIC_FAIL)) {
			status->flag |= RX_FLAG_MMIC_ERROR;
			FUNC5("Michael MIC error. Desc: 0x%x",
				       desc_err_code);
		}
	}

	if (beacon || probe_rsp)
		status->boottime_ns = FUNC2();

	if (beacon)
		FUNC7(wl, (u16)desc->channel,
						status->band);
}