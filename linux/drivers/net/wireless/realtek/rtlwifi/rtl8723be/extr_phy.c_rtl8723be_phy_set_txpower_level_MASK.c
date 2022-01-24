#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct rtl_efuse {int /*<<< orphan*/  txpwr_fromeprom; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  current_chan_bw; } ;
struct TYPE_5__ {TYPE_1__ phy; } ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
 size_t DESC92C_RATE11M ; 
 size_t DESC92C_RATE12M ; 
 size_t DESC92C_RATE18M ; 
 size_t DESC92C_RATE1M ; 
 size_t DESC92C_RATE24M ; 
 size_t DESC92C_RATE2M ; 
 size_t DESC92C_RATE36M ; 
 size_t DESC92C_RATE48M ; 
 size_t DESC92C_RATE54M ; 
 size_t DESC92C_RATE5_5M ; 
 size_t DESC92C_RATE6M ; 
 size_t DESC92C_RATE9M ; 
 size_t DESC92C_RATEMCS0 ; 
 size_t DESC92C_RATEMCS1 ; 
 size_t DESC92C_RATEMCS2 ; 
 size_t DESC92C_RATEMCS3 ; 
 size_t DESC92C_RATEMCS4 ; 
 size_t DESC92C_RATEMCS5 ; 
 size_t DESC92C_RATEMCS6 ; 
 size_t DESC92C_RATEMCS7 ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 size_t FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,size_t,int /*<<< orphan*/ ,size_t) ; 
 struct rtl_efuse* FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (struct ieee80211_hw*) ; 

void FUNC5(struct ieee80211_hw *hw, u8 channel)
{
	struct rtl_efuse *rtlefuse = FUNC3(FUNC4(hw));
	u8 cck_rates[]  = {DESC92C_RATE1M, DESC92C_RATE2M,
			   DESC92C_RATE5_5M, DESC92C_RATE11M};
	u8 ofdm_rates[]  = {DESC92C_RATE6M, DESC92C_RATE9M,
			    DESC92C_RATE12M, DESC92C_RATE18M,
			    DESC92C_RATE24M, DESC92C_RATE36M,
			    DESC92C_RATE48M, DESC92C_RATE54M};
	u8 ht_rates_1t[]  = {DESC92C_RATEMCS0, DESC92C_RATEMCS1,
			     DESC92C_RATEMCS2, DESC92C_RATEMCS3,
			     DESC92C_RATEMCS4, DESC92C_RATEMCS5,
			     DESC92C_RATEMCS6, DESC92C_RATEMCS7};
	u8 i;
	u8 power_index;

	if (!rtlefuse->txpwr_fromeprom)
		return;

	for (i = 0; i < FUNC0(cck_rates); i++) {
		power_index = FUNC1(hw, RF90_PATH_A,
					cck_rates[i],
					FUNC4(hw)->phy.current_chan_bw,
					channel);
		FUNC2(hw, power_index, RF90_PATH_A,
						 cck_rates[i]);
	}
	for (i = 0; i < FUNC0(ofdm_rates); i++) {
		power_index = FUNC1(hw, RF90_PATH_A,
					ofdm_rates[i],
					FUNC4(hw)->phy.current_chan_bw,
					channel);
		FUNC2(hw, power_index, RF90_PATH_A,
						 ofdm_rates[i]);
	}
	for (i = 0; i < FUNC0(ht_rates_1t); i++) {
		power_index = FUNC1(hw, RF90_PATH_A,
					ht_rates_1t[i],
					FUNC4(hw)->phy.current_chan_bw,
					channel);
		FUNC2(hw, power_index, RF90_PATH_A,
						 ht_rates_1t[i]);
	}
}