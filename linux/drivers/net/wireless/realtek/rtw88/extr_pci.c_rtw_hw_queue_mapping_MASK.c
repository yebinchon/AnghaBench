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
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
 size_t IEEE80211_AC_BE ; 
 size_t RTW_TX_QUEUE_BCN ; 
 size_t RTW_TX_QUEUE_MGMT ; 
 scalar_t__ FUNC1 (int) ; 
 size_t* ac_to_hwq ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static u8 FUNC7(struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	__le16 fc = hdr->frame_control;
	u8 q_mapping = FUNC5(skb);
	u8 queue;

	if (FUNC6(FUNC2(fc)))
		queue = RTW_TX_QUEUE_BCN;
	else if (FUNC6(FUNC4(fc) || FUNC3(fc)))
		queue = RTW_TX_QUEUE_MGMT;
	else if (FUNC1(q_mapping >= FUNC0(ac_to_hwq)))
		queue = ac_to_hwq[IEEE80211_AC_BE];
	else
		queue = ac_to_hwq[q_mapping];

	return queue;
}