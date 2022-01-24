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
typedef  size_t u8 ;
struct rtl_phy {int /*<<< orphan*/  current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct ieee80211_hw*,size_t,size_t,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,size_t,size_t,size_t) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw,
						     u8 *array, u8 path,
						     u8 channel, u8 size)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	u8 i;
	u8 power_index;

	for (i = 0; i < size; i++) {
		power_index =
		  FUNC0(hw, path, array[i],
					       rtlphy->current_chan_bw,
					       channel);
		FUNC1(hw, power_index, path,
						 array[i]);
	}
}