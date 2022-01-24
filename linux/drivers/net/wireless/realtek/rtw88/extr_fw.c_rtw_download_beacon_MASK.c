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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct rtw_dev {struct ieee80211_hw* hw; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,char*) ; 

__attribute__((used)) static int
FUNC4(struct rtw_dev *rtwdev, struct ieee80211_vif *vif)
{
	struct ieee80211_hw *hw = rtwdev->hw;
	struct sk_buff *skb;
	int ret = 0;

	skb = FUNC1(hw, vif);
	if (!skb) {
		FUNC3(rtwdev, "failed to get beacon skb\n");
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC2(rtwdev, skb->data, skb->len);
	if (ret)
		FUNC3(rtwdev, "failed to download drv rsvd page\n");

	FUNC0(skb);

out:
	return ret;
}