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
struct sk_buff {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 size_t BEACON_QUEUE ; 
 scalar_t__ HARDWARE_TYPE_RTL8192SE ; 
 scalar_t__ HARDWARE_TYPE_RTL8822BE ; 
 size_t HIGH_QUEUE ; 
 size_t MGNT_QUEUE ; 
 size_t* ac_to_hwq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct ieee80211_hdr* FUNC7 (struct sk_buff*) ; 
 struct rtl_hal* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 size_t FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC12(struct ieee80211_hw *hw, struct sk_buff *skb)
{
	struct rtl_hal *rtlhal = FUNC8(FUNC9(hw));
	__le16 fc = FUNC6(skb);
	u8 queue_index = FUNC10(skb);
	struct ieee80211_hdr *hdr;

	if (FUNC11(FUNC0(fc)))
		return BEACON_QUEUE;
	if (FUNC2(fc) || FUNC1(fc))
		return MGNT_QUEUE;
	if (rtlhal->hw_type == HARDWARE_TYPE_RTL8192SE)
		if (FUNC3(fc))
			return HIGH_QUEUE;
	if (rtlhal->hw_type == HARDWARE_TYPE_RTL8822BE) {
		hdr = FUNC7(skb);

		if (FUNC5(hdr->addr1) ||
		    FUNC4(hdr->addr1))
			return HIGH_QUEUE;
	}

	return ac_to_hwq[queue_index];
}