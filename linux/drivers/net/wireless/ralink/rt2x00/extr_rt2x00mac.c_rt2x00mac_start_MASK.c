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
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct ieee80211_hw *hw)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;

	if (!FUNC1(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
		return 0;

	return FUNC0(rt2x00dev);
}