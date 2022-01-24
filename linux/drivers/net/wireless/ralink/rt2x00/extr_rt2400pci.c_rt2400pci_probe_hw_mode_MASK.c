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
struct hw_mode_spec {struct channel_info* channels_info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  supported_rates; int /*<<< orphan*/  supported_bands; } ;
struct rt2x00_dev {int /*<<< orphan*/  hw; int /*<<< orphan*/  dev; struct hw_mode_spec spec; } ;
struct channel_info {void* default_power1; void* max_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EEPROM_MAC_ADDR_0 ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_START ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HOST_BROADCAST_PS_BUFFERING ; 
 char MAX_TXPOWER ; 
 int /*<<< orphan*/  PS_NULLFUNC_STACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int /*<<< orphan*/  SUPPORTS_PS ; 
 int /*<<< orphan*/  SUPPORT_BAND_2GHZ ; 
 int /*<<< orphan*/  SUPPORT_RATE_CCK ; 
 void* FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct channel_info* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rf_vals_b ; 
 char* FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rt2x00_dev *rt2x00dev)
{
	struct hw_mode_spec *spec = &rt2x00dev->spec;
	struct channel_info *info;
	char *tx_power;
	unsigned int i;

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
	 * Initialize hw_mode information.
	 */
	spec->supported_bands = SUPPORT_BAND_2GHZ;
	spec->supported_rates = SUPPORT_RATE_CCK;

	spec->num_channels = FUNC0(rf_vals_b);
	spec->channels = rf_vals_b;

	/*
	 * Create channel information array
	 */
	info = FUNC5(spec->num_channels, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	spec->channels_info = info;

	tx_power = FUNC6(rt2x00dev, EEPROM_TXPOWER_START);
	for (i = 0; i < 14; i++) {
		info[i].max_power = FUNC3(MAX_TXPOWER);
		info[i].default_power1 = FUNC3(tx_power[i]);
	}

	return 0;
}