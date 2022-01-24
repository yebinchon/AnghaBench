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
typedef  int /*<<< orphan*/  u8 ;
struct rtl_mac {int /*<<< orphan*/  vif; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct ieee80211_sta* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rtl_mac* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static inline struct ieee80211_sta *FUNC3(struct ieee80211_hw *hw,
						 u8 *mac_addr)
{
	struct rtl_mac *mac = FUNC1(FUNC2(hw));

	return FUNC0(mac->vif, mac_addr);
}