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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ ETH_P_PAE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC3 (struct ieee80211_hw*,struct sk_buff*,int) ; 

bool FUNC4(struct ieee80211_hw *hw, struct sk_buff *skb)
{
	u16 ether_type;
	const u8 *ether_type_ptr;
	__le16 fc = FUNC2(skb);

	ether_type_ptr = FUNC3(hw, skb, true);
	ether_type = FUNC0((__be16 *)ether_type_ptr);

	if (ether_type == ETH_P_PAE || FUNC1(fc))
		return true;

	return false;
}