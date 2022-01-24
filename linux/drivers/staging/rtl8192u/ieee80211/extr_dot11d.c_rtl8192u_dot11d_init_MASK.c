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
struct rt_dot11d_info {int dot11d_enabled; int /*<<< orphan*/  max_tx_pwr_dbm_list; int /*<<< orphan*/  channel_map; scalar_t__ country_ie_len; int /*<<< orphan*/  state; } ;
struct ieee80211_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOT11D_STATE_NONE ; 
 struct rt_dot11d_info* FUNC0 (struct ieee80211_device*) ; 
 scalar_t__ MAX_CHANNEL_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct ieee80211_device *ieee)
{
	struct rt_dot11d_info *dot11d_info = FUNC0(ieee);

	dot11d_info->dot11d_enabled = false;

	dot11d_info->state = DOT11D_STATE_NONE;
	dot11d_info->country_ie_len = 0;
	FUNC2(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
	FUNC2(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
	FUNC1(ieee);

	FUNC3(ieee->dev, "rtl8192u_dot11d_init()\n");
}