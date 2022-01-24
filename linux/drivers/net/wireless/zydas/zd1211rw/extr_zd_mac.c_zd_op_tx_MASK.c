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
struct TYPE_2__ {int /*<<< orphan*/  usb; } ;
struct zd_mac {TYPE_1__ chip; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {struct ieee80211_hw** rate_driver_data; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct zd_mac*,struct sk_buff*) ; 
 struct zd_mac* FUNC3 (struct ieee80211_hw*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
		     struct ieee80211_tx_control *control,
		     struct sk_buff *skb)
{
	struct zd_mac *mac = FUNC3(hw);
	struct ieee80211_tx_info *info = FUNC0(skb);
	int r;

	r = FUNC2(mac, skb);
	if (r)
		goto fail;

	info->rate_driver_data[0] = hw;

	r = FUNC4(&mac->chip.usb, skb);
	if (r)
		goto fail;
	return;

fail:
	FUNC1(skb);
}