#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rt2x00_dev {TYPE_4__* bands; struct ieee80211_hw* hw; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_hw {TYPE_3__* wiphy; } ;
struct ieee80211_channel {int dummy; } ;
struct hw_mode_spec {int supported_rates; unsigned int num_channels; int supported_bands; int /*<<< orphan*/  ht; TYPE_2__* channels_info; TYPE_1__* channels; } ;
struct TYPE_8__ {int n_channels; unsigned int n_bitrates; int /*<<< orphan*/  ht_cap; struct ieee80211_rate* bitrates; struct ieee80211_channel* channels; } ;
struct TYPE_7__ {TYPE_4__** bands; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_power; } ;
struct TYPE_5__ {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int SUPPORT_BAND_2GHZ ; 
 int SUPPORT_BAND_5GHZ ; 
 int SUPPORT_RATE_CCK ; 
 int SUPPORT_RATE_OFDM ; 
 void* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_rate*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rt2x00_dev *rt2x00dev,
				    struct hw_mode_spec *spec)
{
	struct ieee80211_hw *hw = rt2x00dev->hw;
	struct ieee80211_channel *channels;
	struct ieee80211_rate *rates;
	unsigned int num_rates;
	unsigned int i;

	num_rates = 0;
	if (spec->supported_rates & SUPPORT_RATE_CCK)
		num_rates += 4;
	if (spec->supported_rates & SUPPORT_RATE_OFDM)
		num_rates += 8;

	channels = FUNC0(spec->num_channels, sizeof(*channels), GFP_KERNEL);
	if (!channels)
		return -ENOMEM;

	rates = FUNC0(num_rates, sizeof(*rates), GFP_KERNEL);
	if (!rates)
		goto exit_free_channels;

	/*
	 * Initialize Rate list.
	 */
	for (i = 0; i < num_rates; i++)
		FUNC6(&rates[i], i, FUNC4(i));

	/*
	 * Initialize Channel list.
	 */
	for (i = 0; i < spec->num_channels; i++) {
		FUNC5(&channels[i],
				  spec->channels[i].channel,
				  spec->channels_info[i].max_power, i);
	}

	/*
	 * Intitialize 802.11b, 802.11g
	 * Rates: CCK, OFDM.
	 * Channels: 2.4 GHz
	 */
	if (spec->supported_bands & SUPPORT_BAND_2GHZ) {
		rt2x00dev->bands[NL80211_BAND_2GHZ].n_channels = 14;
		rt2x00dev->bands[NL80211_BAND_2GHZ].n_bitrates = num_rates;
		rt2x00dev->bands[NL80211_BAND_2GHZ].channels = channels;
		rt2x00dev->bands[NL80211_BAND_2GHZ].bitrates = rates;
		hw->wiphy->bands[NL80211_BAND_2GHZ] =
		    &rt2x00dev->bands[NL80211_BAND_2GHZ];
		FUNC2(&rt2x00dev->bands[NL80211_BAND_2GHZ].ht_cap,
		       &spec->ht, sizeof(spec->ht));
	}

	/*
	 * Intitialize 802.11a
	 * Rates: OFDM.
	 * Channels: OFDM, UNII, HiperLAN2.
	 */
	if (spec->supported_bands & SUPPORT_BAND_5GHZ) {
		rt2x00dev->bands[NL80211_BAND_5GHZ].n_channels =
		    spec->num_channels - 14;
		rt2x00dev->bands[NL80211_BAND_5GHZ].n_bitrates =
		    num_rates - 4;
		rt2x00dev->bands[NL80211_BAND_5GHZ].channels = &channels[14];
		rt2x00dev->bands[NL80211_BAND_5GHZ].bitrates = &rates[4];
		hw->wiphy->bands[NL80211_BAND_5GHZ] =
		    &rt2x00dev->bands[NL80211_BAND_5GHZ];
		FUNC2(&rt2x00dev->bands[NL80211_BAND_5GHZ].ht_cap,
		       &spec->ht, sizeof(spec->ht));
	}

	return 0;

 exit_free_channels:
	FUNC1(channels);
	FUNC3(rt2x00dev, "Allocation ieee80211 modes failed\n");
	return -ENOMEM;
}