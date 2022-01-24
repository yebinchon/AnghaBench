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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct mt76_wcid {int hw_key_idx; } ;
struct mt7601u_dev {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_TXD_PKT_INFO_80211 ; 
 int /*<<< orphan*/  MT_TXD_PKT_INFO_WIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mt7601u_dev*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct mt7601u_dev *dev, struct sk_buff *skb,
			   struct mt76_wcid *wcid, int hw_q)
{
	u8 ep = FUNC4(hw_q);
	u32 dma_flags;
	int ret;

	dma_flags = MT_TXD_PKT_INFO_80211;
	if (wcid->hw_key_idx == 0xff)
		dma_flags |= MT_TXD_PKT_INFO_WIV;

	ret = FUNC2(skb, FUNC0(ep), dma_flags);
	if (ret)
		return ret;

	ret = FUNC3(dev, skb, ep);
	if (ret) {
		FUNC1(dev->hw, skb);
		return ret;
	}

	return 0;
}