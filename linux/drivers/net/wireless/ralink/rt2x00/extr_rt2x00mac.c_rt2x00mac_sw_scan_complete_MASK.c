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
struct rt2x00_dev {int /*<<< orphan*/  flags; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 

void FUNC2(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;
	FUNC0(DEVICE_STATE_SCANNING, &rt2x00dev->flags);
	FUNC1(rt2x00dev);
}