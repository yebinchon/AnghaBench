#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtw_chip_info {int dummy; } ;
struct ieee80211_hw {TYPE_1__* wiphy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bands; } ;

/* Variables and functions */
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ieee80211_hw *hw,
				     struct rtw_chip_info *chip)
{
	FUNC0(hw->wiphy->bands[NL80211_BAND_2GHZ]);
	FUNC0(hw->wiphy->bands[NL80211_BAND_5GHZ]);
}