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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rtw_rsvd_packet_type { ____Placeholder_rtw_rsvd_packet_type } rtw_rsvd_packet_type ;

/* Variables and functions */
#define  RSVD_BEACON 132 
#define  RSVD_NULL 131 
#define  RSVD_PROBE_RESP 130 
#define  RSVD_PS_POLL 129 
#define  RSVD_QOS_NULL 128 
 struct sk_buff* FUNC0 (struct ieee80211_hw*,struct ieee80211_vif*,int) ; 
 struct sk_buff* FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 struct sk_buff* FUNC2 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 struct sk_buff* FUNC3 (struct ieee80211_hw*,struct ieee80211_vif*) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct ieee80211_hw *hw,
					     struct ieee80211_vif *vif,
					     enum rtw_rsvd_packet_type type)
{
	struct sk_buff *skb_new;

	switch (type) {
	case RSVD_BEACON:
		skb_new = FUNC3(hw, vif);
		break;
	case RSVD_PS_POLL:
		skb_new = FUNC2(hw, vif);
		break;
	case RSVD_PROBE_RESP:
		skb_new = FUNC1(hw, vif);
		break;
	case RSVD_NULL:
		skb_new = FUNC0(hw, vif, false);
		break;
	case RSVD_QOS_NULL:
		skb_new = FUNC0(hw, vif, true);
		break;
	default:
		return NULL;
	}

	if (!skb_new)
		return NULL;

	return skb_new;
}