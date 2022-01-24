#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hw_mode_spec {int supported_rates; int num_channels; struct channel_info* channels_info; int /*<<< orphan*/  supported_bands; int /*<<< orphan*/  channels; } ;
struct rt2x00_dev {TYPE_2__* hw; int /*<<< orphan*/  dev; struct hw_mode_spec spec; } ;
struct channel_info {void* default_power1; void* max_power; } ;
struct TYPE_6__ {int max_rates; int max_report_rates; int max_rate_tries; TYPE_1__* wiphy; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EEPROM_MAC_ADDR_0 ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_A_START ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_G_START ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HOST_BROADCAST_PS_BUFFERING ; 
 void* MAX_TXPOWER ; 
 int /*<<< orphan*/  PS_NULLFUNC_STACK ; 
 int /*<<< orphan*/  RF5225 ; 
 int /*<<< orphan*/  RF5325 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int /*<<< orphan*/  SUPPORTS_PS ; 
 int /*<<< orphan*/  SUPPORT_BAND_2GHZ ; 
 int /*<<< orphan*/  SUPPORT_BAND_5GHZ ; 
 int SUPPORT_RATE_CCK ; 
 int SUPPORT_RATE_OFDM ; 
 void* FUNC3 (char) ; 
 int /*<<< orphan*/  WIPHY_FLAG_PS_ON_BY_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct channel_info* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rf_vals_noseq ; 
 int /*<<< orphan*/  rf_vals_seq ; 
 char* FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rt2x00_dev *rt2x00dev)
{
	struct hw_mode_spec *spec = &rt2x00dev->spec;
	struct channel_info *info;
	char *tx_power;
	unsigned int i;

	/*
	 * Disable powersaving as default.
	 */
	rt2x00dev->hw->wiphy->flags &= ~WIPHY_FLAG_PS_ON_BY_DEFAULT;

	/*
	 * Initialize all hw fields.
	 */
	FUNC4(rt2x00dev->hw, PS_NULLFUNC_STACK);
	FUNC4(rt2x00dev->hw, SUPPORTS_PS);
	FUNC4(rt2x00dev->hw, HOST_BROADCAST_PS_BUFFERING);
	FUNC4(rt2x00dev->hw, SIGNAL_DBM);

	FUNC1(rt2x00dev->hw, rt2x00dev->dev);
	FUNC2(rt2x00dev->hw,
				FUNC6(rt2x00dev,
						   EEPROM_MAC_ADDR_0));

	/*
	 * As rt61 has a global fallback table we cannot specify
	 * more then one tx rate per frame but since the hw will
	 * try several rates (based on the fallback table) we should
	 * initialize max_report_rates to the maximum number of rates
	 * we are going to try. Otherwise mac80211 will truncate our
	 * reported tx rates and the rc algortihm will end up with
	 * incorrect data.
	 */
	rt2x00dev->hw->max_rates = 1;
	rt2x00dev->hw->max_report_rates = 7;
	rt2x00dev->hw->max_rate_tries = 1;

	/*
	 * Initialize hw_mode information.
	 */
	spec->supported_bands = SUPPORT_BAND_2GHZ;
	spec->supported_rates = SUPPORT_RATE_CCK | SUPPORT_RATE_OFDM;

	if (!FUNC7(rt2x00dev)) {
		spec->num_channels = 14;
		spec->channels = rf_vals_noseq;
	} else {
		spec->num_channels = 14;
		spec->channels = rf_vals_seq;
	}

	if (FUNC8(rt2x00dev, RF5225) || FUNC8(rt2x00dev, RF5325)) {
		spec->supported_bands |= SUPPORT_BAND_5GHZ;
		spec->num_channels = FUNC0(rf_vals_seq);
	}

	/*
	 * Create channel information array
	 */
	info = FUNC5(spec->num_channels, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	spec->channels_info = info;

	tx_power = FUNC6(rt2x00dev, EEPROM_TXPOWER_G_START);
	for (i = 0; i < 14; i++) {
		info[i].max_power = MAX_TXPOWER;
		info[i].default_power1 = FUNC3(tx_power[i]);
	}

	if (spec->num_channels > 14) {
		tx_power = FUNC6(rt2x00dev, EEPROM_TXPOWER_A_START);
		for (i = 14; i < spec->num_channels; i++) {
			info[i].max_power = MAX_TXPOWER;
			info[i].default_power1 =
					FUNC3(tx_power[i - 14]);
		}
	}

	return 0;
}