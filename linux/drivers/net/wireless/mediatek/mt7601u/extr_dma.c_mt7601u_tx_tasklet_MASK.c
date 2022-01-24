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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mt7601u_dev {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_skb_done; int /*<<< orphan*/  stat_work; int /*<<< orphan*/  stat_wq; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT7601U_STATE_MORE_STATS ; 
 int /*<<< orphan*/  MT7601U_STATE_READING_STATS ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(unsigned long data)
{
	struct mt7601u_dev *dev = (struct mt7601u_dev *) data;
	struct sk_buff_head skbs;
	unsigned long flags;

	FUNC1(&skbs);

	FUNC8(&dev->tx_lock, flags);

	FUNC5(MT7601U_STATE_MORE_STATS, &dev->state);
	if (!FUNC10(MT7601U_STATE_READING_STATS, &dev->state))
		FUNC4(dev->stat_wq, &dev->stat_work,
				   FUNC2(10));

	FUNC7(&dev->tx_skb_done, &skbs);

	FUNC9(&dev->tx_lock, flags);

	while (!FUNC6(&skbs)) {
		struct sk_buff *skb = FUNC0(&skbs);

		FUNC3(dev, skb);
	}
}