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
struct sk_buff {int dummy; } ;
struct rtw_tx_pkt_info {int /*<<< orphan*/  member_0; } ;
struct rtw_dev {int dummy; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTW_FLAG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rtw_dev*,struct rtw_tx_pkt_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,struct rtw_tx_pkt_info*,struct ieee80211_tx_control*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
		       struct ieee80211_tx_control *control,
		       struct sk_buff *skb)
{
	struct rtw_dev *rtwdev = hw->priv;
	struct rtw_tx_pkt_info pkt_info = {0};

	if (!FUNC1(rtwdev, RTW_FLAG_RUNNING))
		goto out;

	FUNC3(rtwdev, &pkt_info, control, skb);
	if (FUNC2(rtwdev, &pkt_info, skb))
		goto out;

	return;

out:
	FUNC0(hw, skb);
}