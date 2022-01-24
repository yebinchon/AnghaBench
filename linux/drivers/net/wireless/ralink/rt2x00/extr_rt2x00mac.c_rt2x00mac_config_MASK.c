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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int /*<<< orphan*/  rx; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  default_ant; int /*<<< orphan*/  flags; } ;
struct ieee80211_conf {int dummy; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,struct ieee80211_conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct ieee80211_hw *hw, u32 changed)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;
	struct ieee80211_conf *conf = &hw->conf;

	/*
	 * mac80211 might be calling this function while we are trying
	 * to remove the device or perhaps suspending it.
	 */
	if (!FUNC6(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
		return 0;

	/*
	 * Some configuration parameters (e.g. channel and antenna values) can
	 * only be set when the radio is enabled, but do require the RX to
	 * be off. During this period we should keep link tuning enabled,
	 * if for any reason the link tuner must be reset, this will be
	 * handled by rt2x00lib_config().
	 */
	FUNC5(rt2x00dev->rx);

	/* Do not race with with link tuner. */
	FUNC0(&rt2x00dev->conf_mutex);

	/*
	 * When we've just turned on the radio, we want to reprogram
	 * everything to ensure a consistent state
	 */
	FUNC2(rt2x00dev, conf, changed);

	/*
	 * After the radio has been enabled we need to configure
	 * the antenna to the default settings. rt2x00lib_config_antenna()
	 * should determine if any action should be taken based on
	 * checking if diversity has been enabled or no antenna changes
	 * have been made since the last configuration change.
	 */
	FUNC3(rt2x00dev, rt2x00dev->default_ant);

	FUNC1(&rt2x00dev->conf_mutex);

	/* Turn RX back on */
	FUNC4(rt2x00dev->rx);

	return 0;
}