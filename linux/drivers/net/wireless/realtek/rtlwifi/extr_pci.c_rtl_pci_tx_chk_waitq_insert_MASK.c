#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct sk_buff {int dummy; } ;
struct rtl_sta_info {TYPE_3__* tids; } ;
struct TYPE_12__ {int /*<<< orphan*/  waitq_lock; } ;
struct TYPE_11__ {int /*<<< orphan*/ * skb_waitq; } ;
struct TYPE_10__ {int /*<<< orphan*/ * higher_busytxtraffic; } ;
struct TYPE_7__ {int /*<<< orphan*/  earlymode_enable; } ;
struct rtl_priv {TYPE_6__ locks; TYPE_5__ mac80211; TYPE_4__ link_info; TYPE_1__ rtlhal; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_8__ {scalar_t__ agg_state; } ;
struct TYPE_9__ {TYPE_2__ agg; } ;

/* Variables and functions */
 scalar_t__ RTL_AGG_OPERATIONAL ; 
 scalar_t__ VO_QUEUE ; 
 scalar_t__ FUNC0 (struct ieee80211_hw*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 size_t FUNC5 (struct sk_buff*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10(struct ieee80211_hw *hw,
					struct ieee80211_sta *sta,
					struct sk_buff *skb)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_sta_info *sta_entry = NULL;
	u8 tid = FUNC5(skb);
	__le16 fc = FUNC4(skb);

	if (!sta)
		return false;
	sta_entry = (struct rtl_sta_info *)sta->drv_priv;

	if (!rtlpriv->rtlhal.earlymode_enable)
		return false;
	if (FUNC1(fc))
		return false;
	if (FUNC3(fc))
		return false;
	if (FUNC2(fc))
		return false;
	if (sta_entry->tids[tid].agg.agg_state != RTL_AGG_OPERATIONAL)
		return false;
	if (FUNC0(hw, skb) > VO_QUEUE)
		return false;
	if (tid > 7)
		return false;

	/* maybe every tid should be checked */
	if (!rtlpriv->link_info.higher_busytxtraffic[tid])
		return false;

	FUNC8(&rtlpriv->locks.waitq_lock);
	FUNC7(&rtlpriv->mac80211.skb_waitq[tid], skb);
	FUNC9(&rtlpriv->locks.waitq_lock);

	return true;
}